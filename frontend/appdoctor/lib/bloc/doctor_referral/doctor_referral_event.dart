part of 'doctor_referral_bloc.dart';

@freezed
class DoctorReferralEvent with _$DoctorReferralEvent {
  const factory DoctorReferralEvent.getReferralsByDoctorId(String doctorId) =
      _GetReferralsByDoctorId;
  const factory DoctorReferralEvent.addNewReferral(NewReferral newReferral) =
      _AddNewReferral;
}
