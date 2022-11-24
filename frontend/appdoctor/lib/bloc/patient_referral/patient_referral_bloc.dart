import 'package:appdoctor/api/referral_api.dart';
import 'package:appdoctor/models/referral/referral.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_referral_event.dart';
part 'patient_referral_state.dart';
part 'patient_referral_bloc.freezed.dart';

class PatientReferralBloc
    extends Bloc<PatientReferralEvent, PatientReferralState> {
  PatientReferralBloc(@visibleForTesting dynamic referralApi)
      : super(const _Loading()) {
    on<_GetReferralsByPatientId>((event, emit) async {
      if (referralApi != null) {
        var referrals =
            await referralApi.getReferralsByPatientId(event.patientId);
        if (referrals.isNotEmpty) {
          emit(_Loaded(referrals));
        } else {
          emit(const _Error("Nincsen egy beutaló sem."));
        }
      } else {
        var referrals =
            await ReferralApi.getReferralsByPatientId(event.patientId);
        if (referrals.isNotEmpty) {
          emit(_Loaded(referrals));
        } else {
          emit(const _Error("Nincsen egy beutaló sem."));
        }
      }
    });
  }
}
