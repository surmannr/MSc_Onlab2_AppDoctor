import 'package:appdoctor/api/examination_reservation_api.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'doctor_examination_reservation_event.dart';
part 'doctor_examination_reservation_state.dart';
part 'doctor_examination_reservation_bloc.freezed.dart';

class DoctorExaminationReservationBloc extends Bloc<
    DoctorExaminationReservationEvent, DoctorExaminationReservationState> {
  DoctorExaminationReservationBloc() : super(const _Loading()) {
    on<_GetExaminationReservationsByDoctorId>(
      (event, emit) async {
        var examinationReservations =
            await ExaminationReservationApi.getExaminationReservationByDoctorId(
                event.doctorId);
        emit(_Loaded(examinationReservations));
      },
    );

    on<_AcceptExaminationReservation>(
      (event, emit) async {
        await ExaminationReservationApi.acceptExaminationReservation(
            event.id, event.accept);
        var prefs = await SharedPreferences.getInstance();
        var examinationReservations =
            await ExaminationReservationApi.getExaminationReservationByDoctorId(
                prefs.getString("doctorId"));
        emit(_Loaded(examinationReservations));
      },
    );

    on<_ResolveExaminationReservation>(
      (event, emit) async {
        await ExaminationReservationApi.resolveExaminationReservation(
            event.id, event.resolve);
        var prefs = await SharedPreferences.getInstance();
        var examinationReservations =
            await ExaminationReservationApi.getExaminationReservationByDoctorId(
                prefs.getString("doctorId"));
        emit(_Loaded(examinationReservations));
      },
    );

    on<_AddNewExaminationReservation>(
      (event, emit) async {
        /* var isSuccess = await ExaminationReservationApi.addNewExaminationReservation(event.newReferral);
        if (isSuccess!) {
          var prefs = await SharedPreferences.getInstance();
          var referrals = await ReferralApi.getReferralsByDoctorId(
              prefs.getString("doctorId"));
          emit(_Loaded(referrals));
        } else {
          emit(const _Error("Nem sikerült betölteni a recepteket."));
        }*/
      },
    );
  }
}
