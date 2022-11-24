import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'new_examination_reservation.freezed.dart';
part 'new_examination_reservation.g.dart';

@freezed
class NewExaminationReservation with _$NewExaminationReservation {
  const factory NewExaminationReservation({
    required DateTime dateFrom,
    required DateTime dateTo,
    required String patientProblem,
    required String doctorId,
    required String patientId,
  }) = _NewExaminationReservation;

  factory NewExaminationReservation.fromJson(Map<String, Object?> json) =>
      _$NewExaminationReservationFromJson(json);
}
