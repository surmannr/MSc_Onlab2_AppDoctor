// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:appdoctor/api/receipt_api.dart';
import 'package:appdoctor/bloc/doctor_receipt/doctor_receipt_bloc.dart';
import 'package:appdoctor/bloc/patient_receipt/patient_receipt_bloc.dart';
import 'package:appdoctor/models/receipt/new_receipt.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:appdoctor/screens/_common_widgets/receipt_tile.dart';
import 'package:appdoctor/screens/receipt/create_receipt.dart';
import 'package:appdoctor/screens/receipt/patient_receipt_list.dart';
import 'package:appdoctor/screens/welcome_doctor_screen.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:appdoctor/main.dart';
import 'package:mocktail/mocktail.dart';

class MockReceiptApi extends Mock implements ReceiptApi {}

class MockPatientReceiptBloc
    extends MockBloc<PatientReceiptEvent, PatientReceiptState>
    implements PatientReceiptBloc {}

class MockDoctorReceiptBloc
    extends MockBloc<DoctorReceiptEvent, DoctorReceiptState>
    implements DoctorReceiptBloc {}

void main() {
  group('Test Receipt List By PatientID', () {
    late dynamic receiptApi;
    late PatientReceiptBloc patientReceiptBloc;

    List<Receipt> data = [
      Receipt(
        id: 'id1',
        date: DateTime.now(),
        patientFullName: "Teszt Patient",
        doctorFullName: "Teszt Doctor",
        medicines: [],
      ),
      Receipt(
        id: 'id2',
        date: DateTime.now(),
        patientFullName: "Teszt Patient2",
        doctorFullName: "Teszt Doctor2",
        medicines: [],
      ),
    ];

    setUp(() {
      receiptApi = MockReceiptApi();
      patientReceiptBloc = MockPatientReceiptBloc();
    });

    blocTest<PatientReceiptBloc, PatientReceiptState>(
      'emits PatientReceiptState.loading when no event added.',
      build: () {
        return PatientReceiptBloc(receiptApi);
      },
      act: (bloc) => bloc.emit(const PatientReceiptState.loading()),
      expect: () => const <PatientReceiptState>[PatientReceiptState.loading()],
    );

    testWidgets('Loading', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<PatientReceiptBloc>(
            lazy: false,
            create: (BuildContext context) => PatientReceiptBloc(receiptApi),
          ),
        ],
        child: const MaterialApp(
          home: PatientReceiptList(),
        ),
      ));

      var progressBar = find.bySubtype<CircularProgressIndicator>();

      expect(progressBar, findsOneWidget);
    });

    blocTest<PatientReceiptBloc, PatientReceiptState>(
      'emits PatientReceiptState.loaded when PatientReceiptEvent.load is added.',
      setUp: () {
        when((() => receiptApi.getPatientRecipes('user3'))).thenReturn(data);
      },
      build: () => PatientReceiptBloc(receiptApi),
      act: (bloc) => bloc.add(const PatientReceiptEvent.load('user3')),
      expect: () => <PatientReceiptState>[PatientReceiptState.loaded(data)],
    );

    testWidgets('Loaded', (tester) async {
      patientReceiptBloc.emit(PatientReceiptState.loaded(data));
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<PatientReceiptBloc>(
            lazy: false,
            create: (BuildContext context) => patientReceiptBloc,
          ),
        ],
        child: const MaterialApp(
          home: PatientReceiptList(),
        ),
      ));

      var receipt = find.bySubtype<ReceiptTile>();

      expect(receipt, findsWidgets);
    });

    blocTest<PatientReceiptBloc, PatientReceiptState>(
      'emits PatientReceiptState.error when PatientReceiptEvent.load is added with bad value.',
      setUp: () {
        when((() => receiptApi.getPatientRecipes('bad_id')))
            .thenReturn(<Receipt>[]);
      },
      build: () => PatientReceiptBloc(receiptApi),
      act: (bloc) => bloc.add(const PatientReceiptEvent.load('bad_id')),
      expect: () => <PatientReceiptState>[
        const PatientReceiptState.error("Nincsen egy recept sem.")
      ],
    );

    setUp(() {
      receiptApi = MockReceiptApi();
      when((() => receiptApi.getPatientRecipes('bad_id')))
          .thenReturn(<Receipt>[]);
      patientReceiptBloc = PatientReceiptBloc(receiptApi);
      patientReceiptBloc.add(const PatientReceiptEvent.load('bad_id'));
    });

    testWidgets('Error', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<PatientReceiptBloc>(
            lazy: true,
            create: (BuildContext context) => patientReceiptBloc,
          ),
        ],
        child: const MaterialApp(
          home: PatientReceiptList(),
        ),
      ));

      var error = find.text("Nincsen egy recept sem.");

      expect(error, findsOneWidget);
    });
  });

  group('Test Add New Receipt', () {
    late dynamic receiptApi;
    late DoctorReceiptBloc doctorReceiptBloc;

    List<Receipt> data = [
      Receipt(
        id: 'id1',
        date: DateTime.now(),
        patientFullName: "Teszt Patient",
        doctorFullName: "Teszt Doctor",
        medicines: [],
      ),
      Receipt(
        id: 'id2',
        date: DateTime.now(),
        patientFullName: "Teszt Patient2",
        doctorFullName: "Teszt Doctor2",
        medicines: [],
      ),
    ];

    Receipt newData = Receipt(
      id: 'id3',
      date: DateTime.now(),
      patientFullName: "Teszt Patient3",
      doctorFullName: "Teszt Doctor3",
      medicines: [],
    );
    NewReceipt newDataForCreating = NewReceipt(
      date: DateTime.now(),
      medicines: [],
      doctorId: "user3",
      patientId: "user1",
    );

    setUp(() {
      receiptApi = MockReceiptApi();
      doctorReceiptBloc = MockDoctorReceiptBloc();
    });

    blocTest<DoctorReceiptBloc, DoctorReceiptState>(
      'emits DoctorReceiptState.loaded when DoctorReceiptEvent.addNewReceipt is added.',
      setUp: () {
        data.add(newData);
        when((() => receiptApi.addNewReceipt(newDataForCreating)))
            .thenReturn(true);
        when((() => receiptApi.getRecipes('user3'))).thenReturn(data);
      },
      build: () => DoctorReceiptBloc(receiptApi),
      act: (bloc) =>
          bloc.add(DoctorReceiptEvent.addNewReceipt(newDataForCreating)),
      expect: () =>
          <DoctorReceiptState>[DoctorReceiptState.loadedDoctorReceipts(data)],
    );

    blocTest<DoctorReceiptBloc, DoctorReceiptState>(
      'emits DoctorReceiptState.error when DoctorReceiptEvent.addNewReceipt is added with bad value.',
      setUp: () {
        when((() => receiptApi.addNewReceipt(newDataForCreating)))
            .thenReturn(false);
        when((() => receiptApi.getRecipes('user3'))).thenReturn(data);
      },
      build: () => DoctorReceiptBloc(receiptApi),
      act: (bloc) =>
          bloc.add(DoctorReceiptEvent.addNewReceipt(newDataForCreating)),
      expect: () => <DoctorReceiptState>[
        const DoctorReceiptState.errorDoctorReceipt(
            "Nem sikerült betölteni a recepteket.")
      ],
    );
  });
}
