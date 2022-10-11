// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Referral _$$_ReferralFromJson(Map<String, dynamic> json) => _$_Referral(
      id: json['id'] as String,
      examinationReservationId: json['examinationReservationId'] as String,
      examinationReservation: ExaminationReservation.fromJson(
          json['examinationReservation'] as Map<String, dynamic>),
      diagnoses: json['diagnoses'] as String,
      examinationDate: DateTime.parse(json['examinationDate'] as String),
    );

Map<String, dynamic> _$$_ReferralToJson(_$_Referral instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examinationReservationId': instance.examinationReservationId,
      'examinationReservation': instance.examinationReservation,
      'diagnoses': instance.diagnoses,
      'examinationDate': instance.examinationDate.toIso8601String(),
    };
