// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:appdoctor/api/examination_reservation_api.dart';
import 'package:appdoctor/bloc/doctor_examination_reservation/doctor_examination_reservation_bloc.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:appdoctor/models/examinationReservation/new_examination_reservation.dart';
import 'package:appdoctor/screens/examination_reservation/examination_reservation_list.dart';
import 'package:appdoctor/screens/examination_reservation/widgets/examination_reservation_tile.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExaminationReservationApi extends Mock
    implements ExaminationReservationApi {}

class MockDoctorExaminationReservationBloc extends MockBloc<
        DoctorExaminationReservationEvent, DoctorExaminationReservationState>
    implements DoctorExaminationReservationBloc {}

void main() {
  group('Test ExaminationReservation List By DoctorId', () {
    late dynamic examinationReservationApi;
    late DoctorExaminationReservationBloc doctorExaminationReservationBloc;

    List<ExaminationReservation> data = [
      ExaminationReservation(
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
      ),
      ExaminationReservation(
        id: "exid2",
        dateFrom: DateTime.now(),
        dateTo: DateTime.now(),
        patientFullName: "Teszt Patient2",
        doctorFullName: "Teszt Doctor2",
        isAccepted: true,
        isResolved: true,
        doctorId: "doc2",
        patientId: "pat2",
        patientProblem: "teszt2",
      ),
    ];

    setUp(() {
      examinationReservationApi = MockExaminationReservationApi();
      doctorExaminationReservationBloc = MockDoctorExaminationReservationBloc();
    });

    blocTest<DoctorExaminationReservationBloc,
        DoctorExaminationReservationState>(
      'emits DoctorExaminationReservationState.loading when no event added.',
      build: () {
        return DoctorExaminationReservationBloc(examinationReservationApi);
      },
      act: (bloc) => bloc.emit(const DoctorExaminationReservationState
          .loadingDoctorExaminationReservations()),
      expect: () => const <DoctorExaminationReservationState>[
        DoctorExaminationReservationState.loadingDoctorExaminationReservations()
      ],
    );

    testWidgets('Loading', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<DoctorExaminationReservationBloc>(
            lazy: false,
            create: (BuildContext context) =>
                DoctorExaminationReservationBloc(examinationReservationApi),
          ),
        ],
        child: const MaterialApp(
          home: ExaminationReservationList(),
        ),
      ));

      var progressBar = find.bySubtype<CircularProgressIndicator>();

      expect(progressBar, findsOneWidget);
    });

    blocTest<DoctorExaminationReservationBloc,
        DoctorExaminationReservationState>(
      'emits DoctorExaminationReservationState.loaded when DoctorExaminationReservationEvent.getExaminationReservationByDoctorId is added.',
      setUp: () {
        when((() => examinationReservationApi
            .getExaminationReservationByDoctorId('user3'))).thenReturn(data);
      },
      build: () => DoctorExaminationReservationBloc(examinationReservationApi),
      act: (bloc) => bloc.add(const DoctorExaminationReservationEvent
          .getExaminationReservationsByDoctorId('user3')),
      expect: () => <DoctorExaminationReservationState>[
        DoctorExaminationReservationState.loadedDoctorExaminationReservations(
            data)
      ],
    );

    setUp(() {
      doctorExaminationReservationBloc =
          DoctorExaminationReservationBloc(examinationReservationApi);
      doctorExaminationReservationBloc.add(
          const DoctorExaminationReservationEvent
              .getExaminationReservationsByDoctorId('bad_id'));
    });

    testWidgets('Loaded', (tester) async {
      doctorExaminationReservationBloc.emit(
          DoctorExaminationReservationState.loadedDoctorExaminationReservations(
              data));
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<DoctorExaminationReservationBloc>(
            lazy: false,
            create: (BuildContext context) => doctorExaminationReservationBloc,
          ),
        ],
        child: const MaterialApp(
          home: ExaminationReservationList(),
        ),
      ));

      var examination_reservation =
          find.bySubtype<ExaminationReservationTile>();

      expect(examination_reservation, findsWidgets);
    });
  });

  group('Test Add New ExaminationReservation', () {
    late dynamic examinationReservationApi;
    late DoctorExaminationReservationBloc doctorExaminationReservationBloc;

    List<ExaminationReservation> data = [
      ExaminationReservation(
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
      ),
      ExaminationReservation(
        id: "exid2",
        dateFrom: DateTime.now(),
        dateTo: DateTime.now(),
        patientFullName: "Teszt Patient2",
        doctorFullName: "Teszt Doctor2",
        isAccepted: true,
        isResolved: true,
        doctorId: "doc2",
        patientId: "pat2",
        patientProblem: "teszt2",
      ),
    ];
    NewExaminationReservation newDataForCreating = NewExaminationReservation(
      patientId: "pat3",
      doctorId: "doc3",
      dateFrom: DateTime.now(),
      dateTo: DateTime.now(),
      patientProblem: "teszt",
    );

    setUp(() {
      examinationReservationApi = MockExaminationReservationApi();
      doctorExaminationReservationBloc = MockDoctorExaminationReservationBloc();
    });

    blocTest<DoctorExaminationReservationBloc,
        DoctorExaminationReservationState>(
      'emits DoctorExaminationReservationState.loaded when DoctorReferralEvent.addNewExaminationReservation is added.',
      setUp: () {
        when((() => examinationReservationApi.addNewExaminationReservation(
            newDataForCreating))).thenReturn(true);
      },
      build: () => DoctorExaminationReservationBloc(examinationReservationApi),
      act: (bloc) => bloc.add(
          DoctorExaminationReservationEvent.addNewExaminationReservation(
              newDataForCreating)),
      expect: () => [],
    );

    blocTest<DoctorExaminationReservationBloc,
        DoctorExaminationReservationState>(
      'emits DoctorExaminationReservationState.error when DoctorReferralEvent.addNewExaminationReservation is added with bad value.',
      setUp: () {
        when((() => examinationReservationApi.addNewExaminationReservation(
            newDataForCreating))).thenReturn(false);
        when((() => examinationReservationApi
            .getExaminationReservationByDoctorId('docId'))).thenReturn(data);
      },
      build: () => DoctorExaminationReservationBloc(examinationReservationApi),
      act: (bloc) => bloc.add(
          DoctorExaminationReservationEvent.addNewExaminationReservation(
              newDataForCreating)),
      expect: () => <DoctorExaminationReservationState>[
        const DoctorExaminationReservationState.errorExaminationReservation(
            "Nem sikerült a művelet.")
      ],
    );
  });
}
