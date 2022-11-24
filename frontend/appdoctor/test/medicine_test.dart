// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:appdoctor/api/medicine_api.dart';
import 'package:appdoctor/bloc/medicine/medicine_bloc.dart';
import 'package:appdoctor/models/medicine/medicine.dart';
import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:appdoctor/screens/medicine/medicine_list.dart';
import 'package:appdoctor/screens/medicine/widgets/medicine_tile.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:appdoctor/main.dart';
import 'package:mocktail/mocktail.dart';

class MockMedicineApi extends Mock implements MedicineApi {}

class MockMedicineBloc extends MockBloc<MedicineEvent, MedicineState>
    implements MedicineBloc {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Test Medicine List', () {
    late dynamic medicineApi;
    late MedicineBloc medicineBloc;

    List<MedicinePreview> data = [
      const MedicinePreview(
        id: 1,
        name: "Teszt Medicine1",
      ),
      const MedicinePreview(
        id: 2,
        name: "Teszt Medicine2",
      ),
    ];

    setUp(() {
      medicineApi = MockMedicineApi();
      medicineBloc = MockMedicineBloc();
    });

    blocTest<MedicineBloc, MedicineState>(
      'emits MedicineState.loading when no event added.',
      build: () {
        return MedicineBloc(medicineApi);
      },
      act: (bloc) => bloc.emit(const MedicineState.loadingMedicinePreviews()),
      expect: () =>
          const <MedicineState>[MedicineState.loadingMedicinePreviews()],
    );

    testWidgets('Loading', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<MedicineBloc>(
            lazy: false,
            create: (BuildContext context) => MedicineBloc(medicineApi),
          ),
        ],
        child: const MaterialApp(
          home: MedicineList(),
        ),
      ));

      var progressBar = find.bySubtype<CircularProgressIndicator>();

      expect(progressBar, findsOneWidget);
    });

    blocTest<MedicineBloc, MedicineState>(
      'emits MedicineState.loaded when MedicineEvent.getMedicinePreviews is added.',
      setUp: () {
        when((() => medicineApi.getMedicines())).thenReturn(data);
      },
      build: () => MedicineBloc(medicineApi),
      act: (bloc) => bloc.add(const MedicineEvent.getMedicinePreviews()),
      expect: () => <MedicineState>[MedicineState.loadedMedicinePreviews(data)],
    );

    testWidgets('Loaded', (tester) async {
      medicineBloc.emit(MedicineState.loadedMedicinePreviews(data));
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<MedicineBloc>(
            lazy: false,
            create: (BuildContext context) => medicineBloc,
          ),
        ],
        child: const MaterialApp(
          home: MedicineList(),
        ),
      ));

      var medicine = find.bySubtype<MedicineTile>();

      expect(medicine, findsWidgets);
    });

    blocTest<MedicineBloc, MedicineState>(
      'emits MedicineState.error when MedicineEvent.getMedicinePreviews is added with bad value.',
      setUp: () {
        when((() => medicineApi.getMedicines())).thenReturn(null);
      },
      build: () => MedicineBloc(medicineApi),
      act: (bloc) => bloc.add(const MedicineEvent.getMedicinePreviews()),
      expect: () => <MedicineState>[
        const MedicineState.errorMedicinePreview(
            "Nem sikerült betölteni a gyógyszereket.")
      ],
    );

    setUp(() {
      medicineApi = MockMedicineApi();
      when((() => medicineApi.getMedicines())).thenReturn(null);
      medicineBloc = MedicineBloc(medicineApi);
      medicineBloc.add(const MedicineEvent.getMedicinePreviews());
    });

    testWidgets('Error', (tester) async {
      await tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider<MedicineBloc>(
            lazy: true,
            create: (BuildContext context) => medicineBloc,
          ),
        ],
        child: const MaterialApp(
          home: MedicineList(),
        ),
      ));

      var error = find.text("Nem sikerült betölteni a gyógyszereket.");

      expect(error, findsOneWidget);
    });
  });

  group('Test Add New Medicine', () {
    late dynamic medicineApi;
    late MedicineBloc medicineBloc;

    List<MedicinePreview> data = [
      const MedicinePreview(
        id: 1,
        name: "Teszt Medicine1",
      ),
      const MedicinePreview(
        id: 2,
        name: "Teszt Medicine2",
      ),
    ];

    setUp(() {
      medicineApi = MockMedicineApi();
      medicineBloc = MockMedicineBloc();
    });

    blocTest<MedicineBloc, MedicineState>(
      'emits MedicineState.loaded when MedicineEvent.addNewMedicine is added.',
      setUp: () {
        when((() => medicineApi.addNewMedicine("teszt", [], 2)))
            .thenReturn(true);
        when((() => medicineApi.getMedicines())).thenReturn(data);
      },
      build: () => MedicineBloc(medicineApi),
      act: (bloc) => bloc.add(
          MedicineEvent.addNewMedicine("teszt", 2, [], MockBuildContext())),
      expect: () => <MedicineState>[
        const MedicineState.loadingMedicinePreviews(),
        MedicineState.loadedMedicinePreviews(data)
      ],
    );

    blocTest<MedicineBloc, MedicineState>(
      'emits MedicineState.error when MedicineEvent.addNewMedicine is added with bad value.',
      setUp: () {
        when((() => medicineApi.addNewMedicine("teszt", [], 2)))
            .thenReturn(null);
        when((() => medicineApi.getMedicines())).thenReturn(data);
      },
      build: () => MedicineBloc(medicineApi),
      act: (bloc) => bloc.add(
          MedicineEvent.addNewMedicine("teszt", 2, [], MockBuildContext())),
      expect: () => <MedicineState>[
        const MedicineState.errorMedicinePreview(
            "Nem sikerült a gyógyszer hozzáadásának feldolgozása a szerveren.")
      ],
    );
  });
}
