part of 'doctor_examination_reservation_bloc.dart';

@freezed
class DoctorExaminationReservationState
    with _$DoctorExaminationReservationState {
  const factory DoctorExaminationReservationState.loadingDoctorExaminationReservations() =
      _Loading;
  const factory DoctorExaminationReservationState.loadedDoctorExaminationReservations(
      List<ExaminationReservation> examinationReservations) = _Loaded;
  const factory DoctorExaminationReservationState.errorExaminationReservation(
      String message) = _Error;
}
