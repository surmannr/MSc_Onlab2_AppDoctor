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
  DoctorReferralBloc() : super(const _Loading()) {
    on<_GetReferralsByDoctorId>(
      (event, emit) async {
        var referrals =
            await ReferralApi.getReferralsByDoctorId(event.doctorId);
        emit(_Loaded(referrals));
      },
    );

    on<_AddNewReferral>(
      (event, emit) async {
        var isSuccess = await ReferralApi.addNewReferral(event.newReferral);
        if (isSuccess!) {
          var prefs = await SharedPreferences.getInstance();
          var referrals = await ReferralApi.getReferralsByDoctorId(
              prefs.getString("doctorId"));
          emit(_Loaded(referrals));
        } else {
          emit(const _Error("Nem sikerült betölteni a recepteket."));
        }
      },
    );
  }
}
