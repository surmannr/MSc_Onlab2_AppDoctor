part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState.initial() = _Initial;
  const factory DoctorState.loading() = _Loading;
  const factory DoctorState.loaded(Doctor doctor) = _Loaded;
  const factory DoctorState.error(String message) = _Error;
}
