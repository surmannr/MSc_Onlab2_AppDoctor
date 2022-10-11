import 'package:appdoctor/models/medicine/medicine.dart';
import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'examination_reservation.freezed.dart';
part 'examination_reservation.g.dart';

@freezed
class ExaminationReservation with _$ExaminationReservation {
  const factory ExaminationReservation({
    required String id,
    required DateTime dateFrom,
    required DateTime dateTo,
    required bool isAccepted,
    required bool isResolved,
    required String patientProblem,
    required String doctorFullName,
    required String doctorId,
    required String patientFullName,
    required String patientId,
  }) = _ExaminationReservation;

  factory ExaminationReservation.fromJson(Map<String, Object?> json) =>
      _$ExaminationReservationFromJson(json);
}
