part of 'doctors_bloc.dart';

@freezed
class DoctorsState with _$DoctorsState {
  const factory DoctorsState.loading() = _Loading;
  const factory DoctorsState.loaded(List<DoctorPreview> doctors) = _Loaded;
  const factory DoctorsState.error(String message) = _Error;
}
