import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:appdoctor/models/referral/referral.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'doctor.freezed.dart';
part 'doctor.g.dart';

@freezed
class Doctor with _$Doctor {
  const factory Doctor({
    required String id,
    required String firstName,
    required String lastName,
    required String namePrefix,
    required String address,
    required DateTime birthDate,
    required List<Receipt> doctorReceipts,
    required List<ExaminationReservation> doctorExaminationReservations,
    required List<Referral> doctorReferrals,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, Object?> json) => _$DoctorFromJson(json);
}
