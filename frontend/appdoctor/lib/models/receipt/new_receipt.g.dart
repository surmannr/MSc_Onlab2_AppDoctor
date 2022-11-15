// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewReceipt _$$_NewReceiptFromJson(Map<String, dynamic> json) =>
    _$_NewReceipt(
      date: DateTime.parse(json['date'] as String),
      patientId: json['patientId'] as String,
      doctorId: json['doctorId'] as String,
      medicines: (json['medicines'] as List<dynamic>)
          .map((e) => MedicineReceipt.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewReceiptToJson(_$_NewReceipt instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'patientId': instance.patientId,
      'doctorId': instance.doctorId,
      'medicines': instance.medicines,
    };
