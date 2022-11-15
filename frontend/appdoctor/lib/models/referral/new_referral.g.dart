// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_referral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewReferral _$$_NewReferralFromJson(Map<String, dynamic> json) =>
    _$_NewReferral(
      examinationReservationId: json['examinationReservationId'] as String,
      diagnoses: json['diagnoses'] as String,
      examinationDate: DateTime.parse(json['examinationDate'] as String),
    );

Map<String, dynamic> _$$_NewReferralToJson(_$_NewReferral instance) =>
    <String, dynamic>{
      'examinationReservationId': instance.examinationReservationId,
      'diagnoses': instance.diagnoses,
      'examinationDate': instance.examinationDate.toIso8601String(),
    };
