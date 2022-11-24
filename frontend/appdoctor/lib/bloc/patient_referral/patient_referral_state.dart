part of 'patient_referral_bloc.dart';

@freezed
class PatientReferralState with _$PatientReferralState {
  const factory PatientReferralState.loading() = _Loading;
  const factory PatientReferralState.loaded(List<Referral> referrals) = _Loaded;
  const factory PatientReferralState.error(String message) = _Error;
}
