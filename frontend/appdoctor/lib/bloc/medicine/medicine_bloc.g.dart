// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoadingMedicinePreview _$$_LoadingMedicinePreviewFromJson(
        Map<String, dynamic> json) =>
    _$_LoadingMedicinePreview(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadingMedicinePreviewToJson(
        _$_LoadingMedicinePreview instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LoadedMedicinePreview _$$_LoadedMedicinePreviewFromJson(
        Map<String, dynamic> json) =>
    _$_LoadedMedicinePreview(
      (json['medicines'] as List<dynamic>)
          .map((e) => MedicinePreview.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadedMedicinePreviewToJson(
        _$_LoadedMedicinePreview instance) =>
    <String, dynamic>{
      'medicines': instance.medicines,
      'runtimeType': instance.$type,
    };

_$_ErrorMedicinePreview _$$_ErrorMedicinePreviewFromJson(
        Map<String, dynamic> json) =>
    _$_ErrorMedicinePreview(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ErrorMedicinePreviewToJson(
        _$_ErrorMedicinePreview instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
