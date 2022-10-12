part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getLoggedInDoctor() = _GetLoggedInDoctor;
  const factory DoctorEvent.loginDoctor({required String doctorId}) =
      _LoginDoctor;
}
