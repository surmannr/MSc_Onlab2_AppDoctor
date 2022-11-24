// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:appdoctor/api/referral_api.dart';
import 'package:appdoctor/bloc/doctor_referral/doctor_referral_bloc.dart';
import 'package:appdoctor/bloc/patient_referral/patient_referral_bloc.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:appdoctor/models/referral/new_referral.dart';
import 'package:appdoctor/models/referral/referral.dart';
import 'package:appdoctor/screens/_common_widgets/referral_tile.dart';
import 'package:appdoctor/screens/referral/patient_referral_list.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockReferralApi extends Mock implements ReferralApi {}

class MockPatientReferralBloc
    extends MockBloc<PatientReferralEvent, PatientReferralState>
    implements PatientReferralBloc {}

class MockDoctorReferralBloc
    extends MockBloc<DoctorReferralEvent, DoctorReferralState>
    implements DoctorReferralBloc {}

var examinationReservation = ExaminationReservation(
  id: "exid1",
  dateFrom: DateTime.now(),
  dateTo: DateTime.now(),
  patientFullName: "Teszt Patient",
  doctorFullName: "Teszt Doctor",
  isAccepted: true,
  isResolved: true,
  doctorId: "doc1",
  patientId: "pat1",
  patientProblem: "teszt",
);

void main() {
  group('Test Referral List By PatientID', () {
    late dynamic referralApi;
    late PatientReferralBloc patientReferralBloc;

    List<Referral> data = [
      Referral(
        id: 'id1',
        examinationDate: DateTime.now(),
        examinationReservationId: "exid1",
        examinationReservation: examinationReservation,
        diagnoses: "teszt",
      ),
      Referral(
        id: 'id2',
        examinationDate: DateTime.now(),
        examinationReservationId: "exid1",
        examinationReservation: examinationReservation,
        diagnoses: "teszt",
      ),
    ];

    setUp(() {
      referralApi = MockReferralApi();
      patientReferralBloc = MockPatientReferralBloc();
    });

    blocTest<PatientReferralBloc, PatientReferralState>(
      'emits PatientReferralState.loading when no event added.',
      build: () {
        return PatientReferralBloc(referralApi);
      },
      act: (bloc) => bloc.emit(const PatientReferralState.loading()),
      expect: () =>
          const <PatientReferralState>[PatientReferralState.loading()],
    );

    testWidgets('Loading', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<PatientReferralBloc>(
            lazy: false,
            create: (BuildContext context) => PatientReferralBloc(referralApi),
          ),
        ],
        child: const MaterialApp(
          home: PatientReferralList(),
        ),
      ));

      var progressBar = find.bySubtype<CircularProgressIndicator>();

      expect(progressBar, findsOneWidget);
    });

    blocTest<PatientReferralBloc, PatientReferralState>(
      'emits PatientReferralState.loaded when PatientReceiptEvent.getReferralsByPatientId is added.',
      setUp: () {
        when((() => referralApi.getReferralsByPatientId('user3')))
            .thenReturn(data);
      },
      build: () => PatientReferralBloc(referralApi),
      act: (bloc) =>
          bloc.add(const PatientReferralEvent.getReferralsByPatientId('user3')),
      expect: () => <PatientReferralState>[PatientReferralState.loaded(data)],
    );

    testWidgets('Loaded', (tester) async {
      patientReferralBloc.emit(PatientReferralState.loaded(data));
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<PatientReferralBloc>(
            lazy: false,
            create: (BuildContext context) => patientReferralBloc,
          ),
        ],
        child: const MaterialApp(
          home: PatientReferralList(),
        ),
      ));

      var referral = find.bySubtype<ReferralTile>();

      expect(referral, findsWidgets);
    });

    blocTest<PatientReferralBloc, PatientReferralState>(
      'emits PatientReferralState.error when PatientReferralEvent.getReferralsByPatientId is added with bad value.',
      setUp: () {
        when((() => referralApi.getReferralsByPatientId('bad_id')))
            .thenReturn(<Referral>[]);
      },
      build: () => PatientReferralBloc(referralApi),
      act: (bloc) => bloc
          .add(const PatientReferralEvent.getReferralsByPatientId('bad_id')),
      expect: () => <PatientReferralState>[
        const PatientReferralState.error("Nincsen egy beutaló sem.")
      ],
    );

    setUp(() {
      referralApi = MockReferralApi();
      when((() => referralApi.getReferralsByPatientId('bad_id')))
          .thenReturn(<Referral>[]);
      patientReferralBloc = PatientReferralBloc(referralApi);
      patientReferralBloc
          .add(const PatientReferralEvent.getReferralsByPatientId('bad_id'));
    });

    testWidgets('Error', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<PatientReferralBloc>(
            lazy: true,
            create: (BuildContext context) => patientReferralBloc,
          ),
        ],
        child: const MaterialApp(
          home: PatientReferralList(),
        ),
      ));

      var error = find.text("Nincsen egy beutaló sem.");

      expect(error, findsOneWidget);
    });
  });

  group('Test Add New Referral', () {
    late dynamic referralApi;
    late DoctorReferralBloc doctorReferralBloc;

    List<Referral> data = [
      Referral(
        id: 'id1',
        examinationDate: DateTime.now(),
        examinationReservationId: "exid1",
        examinationReservation: examinationReservation,
        diagnoses: "teszt",
      ),
      Referral(
        id: 'id2',
        examinationDate: DateTime.now(),
        examinationReservationId: "exid1",
        examinationReservation: examinationReservation,
        diagnoses: "teszt",
      ),
    ];
    NewReferral newDataForCreating = NewReferral(
      examinationReservationId: "exid1",
      examinationDate: DateTime.now(),
      diagnoses: "teszt",
    );

    setUp(() {
      referralApi = MockReferralApi();
      doctorReferralBloc = MockDoctorReferralBloc();
    });

    blocTest<DoctorReferralBloc, DoctorReferralState>(
      'emits DoctorReferralState.loaded when DoctorReferralEvent.addNewReferral is added.',
      setUp: () {
        when((() => referralApi.addNewReferral(newDataForCreating)))
            .thenReturn(true);
        when((() => referralApi.getReferralsByDoctorId('docId')))
            .thenReturn(data);
      },
      build: () => DoctorReferralBloc(referralApi),
      act: (bloc) =>
          bloc.add(DoctorReferralEvent.addNewReferral(newDataForCreating)),
      expect: () => <DoctorReferralState>[
        DoctorReferralState.loadedDoctorReferrals(data)
      ],
    );

    blocTest<DoctorReferralBloc, DoctorReferralState>(
      'emits DoctorReferralState.error when DoctorReferralEvent.addNewReferral is added with bad value.',
      setUp: () {
        when((() => referralApi.addNewReferral(newDataForCreating)))
            .thenReturn(false);
        when((() => referralApi.getReferralsByDoctorId('docId')))
            .thenReturn(data);
      },
      build: () => DoctorReferralBloc(referralApi),
      act: (bloc) =>
          bloc.add(DoctorReferralEvent.addNewReferral(newDataForCreating)),
      expect: () => <DoctorReferralState>[
        const DoctorReferralState.errorDoctorReferral(
            "Nem sikerült betölteni a recepteket.")
      ],
    );
  });
}
