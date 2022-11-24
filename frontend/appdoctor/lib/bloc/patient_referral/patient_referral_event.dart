part of 'patient_referral_bloc.dart';

@freezed
class PatientReferralEvent with _$PatientReferralEvent {
  const factory PatientReferralEvent.getReferralsByPatientId(String patientId) =
      _GetReferralsByPatientId;
}
