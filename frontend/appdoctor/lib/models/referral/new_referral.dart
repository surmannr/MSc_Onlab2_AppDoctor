import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'new_referral.freezed.dart';
part 'new_referral.g.dart';

@freezed
class NewReferral with _$NewReferral {
  const factory NewReferral({
    required String examinationReservationId,
    required String diagnoses,
    required DateTime examinationDate,
  }) = _NewReferral;

  factory NewReferral.fromJson(Map<String, Object?> json) =>
      _$NewReferralFromJson(json);
}
