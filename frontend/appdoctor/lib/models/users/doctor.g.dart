// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Doctor _$$_DoctorFromJson(Map<String, dynamic> json) => _$_Doctor(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      namePrefix: json['namePrefix'] as String,
      address: json['address'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      doctorReceipts: (json['doctorReceipts'] as List<dynamic>)
          .map((e) => Receipt.fromJson(e as Map<String, dynamic>))
          .toList(),
      doctorExaminationReservations: (json['doctorExaminationReservations']
              as List<dynamic>)
          .map(
              (e) => ExaminationReservation.fromJson(e as Map<String, dynamic>))
          .toList(),
      doctorReferrals: (json['doctorReferrals'] as List<dynamic>)
          .map((e) => Referral.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DoctorToJson(_$_Doctor instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'namePrefix': instance.namePrefix,
      'address': instance.address,
      'birthDate': instance.birthDate.toIso8601String(),
      'doctorReceipts': instance.doctorReceipts,
      'doctorExaminationReservations': instance.doctorExaminationReservations,
      'doctorReferrals': instance.doctorReferrals,
    };
