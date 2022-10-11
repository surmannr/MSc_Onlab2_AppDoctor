import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:appdoctor/models/referral/referral.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    required String id,
    required String firstName,
    required String lastName,
    required String namePrefix,
    required String address,
    required DateTime birthDate,
    required List<Receipt> patientsReceipts,
    required List<ExaminationReservation> patientsExaminationReservations,
    required List<Referral> patientsReferrals,
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) =>
      _$PatientFromJson(json);
}
