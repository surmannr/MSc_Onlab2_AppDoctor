import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'doctor_preview.freezed.dart';
part 'doctor_preview.g.dart';

@freezed
class DoctorPreview with _$DoctorPreview {
  const factory DoctorPreview({
    required String id,
    required String firstName,
    required String lastName,
    required String namePrefix,
    required String address,
    required DateTime birthDate,
  }) = _DoctorPreview;

  factory DoctorPreview.fromJson(Map<String, Object?> json) =>
      _$DoctorPreviewFromJson(json);
}
