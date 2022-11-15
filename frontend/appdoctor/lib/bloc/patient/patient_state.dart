part of 'patient_bloc.dart';

@freezed
class PatientState with _$PatientState {
  const factory PatientState.loading() = _Loading;
  const factory PatientState.loaded(Patient patient) = _Loaded;
  const factory PatientState.error(String message) = _Error;
}
