import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_receipt.freezed.dart';
part 'medicine_receipt.g.dart';

@freezed
class MedicineReceipt with _$MedicineReceipt {
  const factory MedicineReceipt({
    required int id,
    required String name,
    required int quantity,
  }) = _MedicineReceipt;

  factory MedicineReceipt.fromJson(Map<String, Object?> json) =>
      _$MedicineReceiptFromJson(json);
}
