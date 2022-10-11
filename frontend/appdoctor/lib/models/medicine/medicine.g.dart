// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medicine _$$_MedicineFromJson(Map<String, dynamic> json) => _$_Medicine(
      id: json['id'] as int,
      name: json['name'] as String,
      inStock: json['inStock'] as int,
      diseasesGoodFor: (json['diseasesGoodFor'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_MedicineToJson(_$_Medicine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'inStock': instance.inStock,
      'diseasesGoodFor': instance.diseasesGoodFor,
    };
