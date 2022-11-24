import 'package:appdoctor/api/referral_api.dart';
import 'package:appdoctor/models/referral/new_referral.dart';
import 'package:appdoctor/models/referral/referral.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'doctor_referral_event.dart';
part 'doctor_referral_state.dart';
part 'doctor_referral_bloc.freezed.dart';

class DoctorReferralBloc
    extends Bloc<DoctorReferralEvent, DoctorReferralState> {
  DoctorReferralBloc(@visibleForTesting dynamic referralApi)
      : super(const _Loading()) {
    on<_GetReferralsByDoctorId>(
      (event, emit) async {
        if (referralApi != null) {
          var referrals =
              await referralApi.getReferralsByDoctorId(event.doctorId);
          emit(_Loaded(referrals));
        } else {
          var referrals =
              await ReferralApi.getReferralsByDoctorId(event.doctorId);
          emit(_Loaded(referrals));
        }
      },
    );

    on<_AddNewReferral>(
      (event, emit) async {
        if (referralApi != null) {
          var isSuccess = await referralApi.addNewReferral(event.newReferral);
          if (isSuccess!) {
            var referrals = await referralApi.getReferralsByDoctorId("docId");
            emit(_Loaded(referrals));
          } else {
            emit(const _Error("Nem sikerült betölteni a recepteket."));
          }
        } else {
          var isSuccess = await ReferralApi.addNewReferral(event.newReferral);
          if (isSuccess!) {
            var prefs = await SharedPreferences.getInstance();
            var referrals = await ReferralApi.getReferralsByDoctorId(
                prefs.getString("doctorId"));
            emit(_Loaded(referrals));
          } else {
            emit(const _Error("Nem sikerült betölteni a recepteket."));
          }
        }
      },
    );
  }
}
