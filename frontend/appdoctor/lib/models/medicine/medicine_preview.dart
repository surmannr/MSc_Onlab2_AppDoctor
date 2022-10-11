import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'medicine_preview.freezed.dart';
part 'medicine_preview.g.dart';

@freezed
class MedicinePreview with _$MedicinePreview {
  const factory MedicinePreview({
    required int id,
    required String name,
    required int quantity,
  }) = _MedicinePreview;

  factory MedicinePreview.fromJson(Map<String, Object?> json) =>
      _$MedicinePreviewFromJson(json);
}
