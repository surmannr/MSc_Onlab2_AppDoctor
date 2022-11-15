part of 'patient_bloc.dart';

@freezed
class PatientEvent with _$PatientEvent {
  const factory PatientEvent.loginPatient({required String patientId}) =
      _LoginPatient;
}
