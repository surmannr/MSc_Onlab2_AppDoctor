import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'patient_preview.freezed.dart';
part 'patient_preview.g.dart';

@freezed
class PatientPreview with _$PatientPreview {
  const factory PatientPreview({
    required String id,
    required String firstName,
    required String lastName,
    required String namePrefix,
    required String address,
    required DateTime birthDate,
  }) = _PatientPreview;

  factory PatientPreview.fromJson(Map<String, Object?> json) =>
      _$PatientPreviewFromJson(json);
}
