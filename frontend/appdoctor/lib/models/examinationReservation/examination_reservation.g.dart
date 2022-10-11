// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'examination_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExaminationReservation _$$_ExaminationReservationFromJson(
        Map<String, dynamic> json) =>
    _$_ExaminationReservation(
      id: json['id'] as String,
      dateFrom: DateTime.parse(json['dateFrom'] as String),
      dateTo: DateTime.parse(json['dateTo'] as String),
      isAccepted: json['isAccepted'] as bool,
      isResolved: json['isResolved'] as bool,
      patientProblem: json['patientProblem'] as String,
      doctorFullName: json['doctorFullName'] as String,
      doctorId: json['doctorId'] as String,
      patientFullName: json['patientFullName'] as String,
      patientId: json['patientId'] as String,
    );

Map<String, dynamic> _$$_ExaminationReservationToJson(
        _$_ExaminationReservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateFrom': instance.dateFrom.toIso8601String(),
      'dateTo': instance.dateTo.toIso8601String(),
      'isAccepted': instance.isAccepted,
      'isResolved': instance.isResolved,
      'patientProblem': instance.patientProblem,
      'doctorFullName': instance.doctorFullName,
      'doctorId': instance.doctorId,
      'patientFullName': instance.patientFullName,
      'patientId': instance.patientId,
    };
