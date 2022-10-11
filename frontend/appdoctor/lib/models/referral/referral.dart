import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'referral.freezed.dart';
part 'referral.g.dart';

@freezed
class Referral with _$Referral {
  const factory Referral({
    required String id,
    required String examinationReservationId,
    required ExaminationReservation examinationReservation,
    required String diagnoses,
    required DateTime examinationDate,
  }) = _Referral;

  factory Referral.fromJson(Map<String, Object?> json) =>
      _$ReferralFromJson(json);
}
