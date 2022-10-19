part of 'medicine_bloc.dart';

@freezed
class MedicineEvent with _$MedicineEvent {
  const factory MedicineEvent.getMedicinePreviews() = _GetMedicinePreviews;
  const factory MedicineEvent.addNewMedicine(String name, int inStock,
      List<String> diseases, BuildContext context) = _AddNewMedicine;
}
