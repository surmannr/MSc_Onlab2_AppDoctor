part of 'doctor_examination_reservation_bloc.dart';

@freezed
class DoctorExaminationReservationEvent
    with _$DoctorExaminationReservationEvent {
  const factory DoctorExaminationReservationEvent.getExaminationReservationsByDoctorId(
      String doctorId) = _GetExaminationReservationsByDoctorId;
  const factory DoctorExaminationReservationEvent.addNewExaminationReservation(
          NewExaminationReservation newExaminationReservation) =
      _AddNewExaminationReservation;
  const factory DoctorExaminationReservationEvent.acceptExaminationReservation(
      String id, bool accept) = _AcceptExaminationReservation;
  const factory DoctorExaminationReservationEvent.resolveExaminationReservation(
      String id, bool resolve) = _ResolveExaminationReservation;
}
