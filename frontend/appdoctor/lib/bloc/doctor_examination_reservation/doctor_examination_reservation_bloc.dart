import 'package:appdoctor/api/examination_reservation_api.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:appdoctor/models/examinationReservation/new_examination_reservation.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'doctor_examination_reservation_event.dart';
part 'doctor_examination_reservation_state.dart';
part 'doctor_examination_reservation_bloc.freezed.dart';

class DoctorExaminationReservationBloc extends Bloc<
    DoctorExaminationReservationEvent, DoctorExaminationReservationState> {
  DoctorExaminationReservationBloc(@visibleForTesting dynamic api)
      : super(const _Loading()) {
    on<_GetExaminationReservationsByDoctorId>(
      (event, emit) async {
        if (api != null) {
          var examinationReservations =
              await api.getExaminationReservationByDoctorId(event.doctorId);
          emit(_Loaded(examinationReservations));
        } else {
          var examinationReservations = await ExaminationReservationApi
              .getExaminationReservationByDoctorId(event.doctorId);
          emit(_Loaded(examinationReservations));
        }
      },
    );

    on<_AcceptExaminationReservation>(
      (event, emit) async {
        if (api != null) {
          await api.acceptExaminationReservation(event.id, event.accept);
          var examinationReservations =
              await api.getExaminationReservationByDoctorId("doctorId");
          emit(_Loaded(examinationReservations));
        } else {
          await ExaminationReservationApi.acceptExaminationReservation(
              event.id, event.accept);
          var prefs = await SharedPreferences.getInstance();
          var examinationReservations = await ExaminationReservationApi
              .getExaminationReservationByDoctorId(prefs.getString("doctorId"));
          emit(_Loaded(examinationReservations));
        }
      },
    );

    on<_ResolveExaminationReservation>(
      (event, emit) async {
        if (api != null) {
          await api.resolveExaminationReservation(event.id, event.resolve);
          var examinationReservations =
              await api.getExaminationReservationByDoctorId("doctorId");
          emit(_Loaded(examinationReservations));
        } else {
          await ExaminationReservationApi.resolveExaminationReservation(
              event.id, event.resolve);
          var prefs = await SharedPreferences.getInstance();
          var examinationReservations = await ExaminationReservationApi
              .getExaminationReservationByDoctorId(prefs.getString("doctorId"));
          emit(_Loaded(examinationReservations));
        }
      },
    );

    on<_AddNewExaminationReservation>(
      (event, emit) async {
        if (api != null) {
          var isSuccess = await api
              .addNewExaminationReservation(event.newExaminationReservation);
          if (!isSuccess!) {
            emit(const _Error("Nem sikerült a művelet."));
          }
        } else {
          var isSuccess =
              await ExaminationReservationApi.addNewExaminationReservation(
                  event.newExaminationReservation);
          if (!isSuccess!) {
            emit(const _Error("Nem sikerült a művelet."));
          }
        }
      },
    );
  }
}
