import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'medicine.freezed.dart';
part 'medicine.g.dart';

@freezed
class Medicine with _$Medicine {
  const factory Medicine({
    required int id,
    required String name,
    required int inStock,
    required List<String> diseasesGoodFor,
  }) = _Medicine;

  factory Medicine.fromJson(Map<String, Object?> json) =>
      _$MedicineFromJson(json);
}
