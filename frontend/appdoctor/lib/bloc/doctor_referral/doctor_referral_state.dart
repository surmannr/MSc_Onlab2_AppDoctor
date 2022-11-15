part of 'doctor_referral_bloc.dart';

@freezed
class DoctorReferralState with _$DoctorReferralState {
  const factory DoctorReferralState.loadingDoctorReferrals() = _Loading;
  const factory DoctorReferralState.loadedDoctorReferrals(
      List<Referral> referrals) = _Loaded;
  const factory DoctorReferralState.errorDoctorReferral(String message) =
      _Error;
}
