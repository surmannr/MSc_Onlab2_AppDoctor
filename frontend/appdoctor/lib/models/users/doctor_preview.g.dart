// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorPreview _$$_DoctorPreviewFromJson(Map<String, dynamic> json) =>
    _$_DoctorPreview(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      namePrefix: json['namePrefix'] as String,
      address: json['address'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
    );

Map<String, dynamic> _$$_DoctorPreviewToJson(_$_DoctorPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'namePrefix': instance.namePrefix,
      'address': instance.address,
      'birthDate': instance.birthDate.toIso8601String(),
    };
