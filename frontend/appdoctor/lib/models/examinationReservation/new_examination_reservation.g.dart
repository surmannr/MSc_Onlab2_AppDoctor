// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_examination_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewExaminationReservation _$$_NewExaminationReservationFromJson(
        Map<String, dynamic> json) =>
    _$_NewExaminationReservation(
      dateFrom: DateTime.parse(json['dateFrom'] as String),
      dateTo: DateTime.parse(json['dateTo'] as String),
      patientProblem: json['patientProblem'] as String,
      doctorId: json['doctorId'] as String,
      patientId: json['patientId'] as String,
    );

Map<String, dynamic> _$$_NewExaminationReservationToJson(
        _$_NewExaminationReservation instance) =>
    <String, dynamic>{
      'dateFrom': instance.dateFrom.toIso8601String(),
      'dateTo': instance.dateTo.toIso8601String(),
      'patientProblem': instance.patientProblem,
      'doctorId': instance.doctorId,
      'patientId': instance.patientId,
    };
