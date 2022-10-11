// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Patient _$$_PatientFromJson(Map<String, dynamic> json) => _$_Patient(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      namePrefix: json['namePrefix'] as String,
      address: json['address'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      patientsReceipts: (json['patientsReceipts'] as List<dynamic>)
          .map((e) => Receipt.fromJson(e as Map<String, dynamic>))
          .toList(),
      patientsExaminationReservations: (json['patientsExaminationReservations']
              as List<dynamic>)
          .map(
              (e) => ExaminationReservation.fromJson(e as Map<String, dynamic>))
          .toList(),
      patientsReferrals: (json['patientsReferrals'] as List<dynamic>)
          .map((e) => Referral.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatientToJson(_$_Patient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'namePrefix': instance.namePrefix,
      'address': instance.address,
      'birthDate': instance.birthDate.toIso8601String(),
      'patientsReceipts': instance.patientsReceipts,
      'patientsExaminationReservations':
          instance.patientsExaminationReservations,
      'patientsReferrals': instance.patientsReferrals,
    };
