// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Receipt _$$_ReceiptFromJson(Map<String, dynamic> json) => _$_Receipt(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      patientFullName: json['patientFullName'] as String,
      doctorFullName: json['doctorFullName'] as String,
      medicines: (json['medicines'] as List<dynamic>)
          .map((e) => MedicinePreview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReceiptToJson(_$_Receipt instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'patientFullName': instance.patientFullName,
      'doctorFullName': instance.doctorFullName,
      'medicines': instance.medicines,
    };
