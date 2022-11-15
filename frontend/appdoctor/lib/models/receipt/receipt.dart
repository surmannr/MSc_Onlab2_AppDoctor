import 'package:appdoctor/models/medicine/medicine_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'receipt.freezed.dart';
part 'receipt.g.dart';

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    required String id,
    required DateTime date,
    required String patientFullName,
    required String doctorFullName,
    required List<MedicineReceipt> medicines,
  }) = _Receipt;

  factory Receipt.fromJson(Map<String, Object?> json) =>
      _$ReceiptFromJson(json);
}
