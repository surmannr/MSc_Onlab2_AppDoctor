part of 'disease_bloc.dart';

@freezed
class DiseaseState with _$DiseaseState {
  const factory DiseaseState.loadingDiseases() = _LoadingDiseases;
  const factory DiseaseState.loadedDiseases(List<String> diseases) =
      _LoadedDiseases;
  const factory DiseaseState.errorDiseases(String message) = _ErrorDiseases;
}
