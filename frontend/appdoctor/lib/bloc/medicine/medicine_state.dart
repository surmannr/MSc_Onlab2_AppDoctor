part of 'medicine_bloc.dart';

@freezed
class MedicineState with _$MedicineState {
  const factory MedicineState.loadingMedicinePreviews() =
      _LoadingMedicinePreview;
  const factory MedicineState.loadedMedicinePreviews(
      List<MedicinePreview> medicines) = _LoadedMedicinePreview;
  const factory MedicineState.errorMedicinePreview(String message) =
      _ErrorMedicinePreview;

  factory MedicineState.fromJson(Map<String, Object?> json) =>
      _$MedicineStateFromJson(json);
}
