// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:appdoctor/api/medicine_api.dart';
import 'package:appdoctor/bloc/disease/disease_bloc.dart';
import 'package:appdoctor/screens/medicine/add-medicine.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:appdoctor/main.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class MockMedicineApi extends Mock implements MedicineApi {}

class MockDiseaseBloc extends MockBloc<DiseaseEvent, DiseaseState>
    implements DiseaseBloc {}

void main() {
  group('Test Disease list', () {
    late dynamic medicineApi;
    late DiseaseBloc diseaseBloc;

    List<String> data = [
      "teszt1",
      "teszt2",
      "teszt3",
    ];

    setUp(() {
      medicineApi = MockMedicineApi();
      diseaseBloc = MockDiseaseBloc();
    });

    blocTest<DiseaseBloc, DiseaseState>(
      'emits DiseaseState.loading when no event added.',
      build: () {
        return DiseaseBloc(medicineApi);
      },
      act: (bloc) => bloc.emit(const DiseaseState.loadingDiseases()),
      expect: () => const <DiseaseState>[DiseaseState.loadingDiseases()],
    );

    testWidgets('Loading', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<DiseaseBloc>(
            lazy: false,
            create: (BuildContext context) => DiseaseBloc(medicineApi),
          ),
        ],
        child: const MaterialApp(
          home: AddMedicine(),
        ),
      ));

      var progressBar = find.bySubtype<CircularProgressIndicator>();

      expect(progressBar, findsOneWidget);
    });

    blocTest<DiseaseBloc, DiseaseState>(
      'emits DiseaseState.loaded when DiseaseEvent.getDiseases is added.',
      setUp: () {
        when((() => medicineApi.getDiseases())).thenReturn(data);
      },
      build: () => DiseaseBloc(medicineApi),
      act: (bloc) => bloc.add(const DiseaseEvent.getDiseases()),
      expect: () => <DiseaseState>[DiseaseState.loadedDiseases(data)],
    );

    testWidgets('Loaded', (tester) async {
      diseaseBloc.emit(DiseaseState.loadedDiseases(data));
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<DiseaseBloc>(
            lazy: false,
            create: (BuildContext context) => diseaseBloc,
          ),
        ],
        child: const MaterialApp(
          home: AddMedicine(),
        ),
      ));

      var disease = find.bySubtype<MultiSelectBottomSheetField>();

      expect(disease, findsWidgets);
    });

    blocTest<DiseaseBloc, DiseaseState>(
      'emits DiseaseState.error when DiseaseEvent.getDiseases is added with bad value.',
      setUp: () {
        when((() => medicineApi.getDiseases())).thenReturn(null);
      },
      build: () => DiseaseBloc(medicineApi),
      act: (bloc) => bloc.add(const DiseaseEvent.getDiseases()),
      expect: () => <DiseaseState>[
        const DiseaseState.errorDiseases(
            "Nem sikerült betölteni a gyógyszereket.")
      ],
    );

    setUp(() {
      medicineApi = MockMedicineApi();
      when((() => medicineApi.getDiseases())).thenReturn(null);
      diseaseBloc = DiseaseBloc(medicineApi);
      diseaseBloc.add(const DiseaseEvent.getDiseases());
    });

    testWidgets('Error', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<DiseaseBloc>(
            lazy: true,
            create: (BuildContext context) => diseaseBloc,
          ),
        ],
        child: const MaterialApp(
          home: AddMedicine(),
        ),
      ));

      var error = find.text("Nem sikerült betölteni a gyógyszereket.");

      expect(error, findsOneWidget);
    });
  });
}
