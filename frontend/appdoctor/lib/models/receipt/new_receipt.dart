import 'package:appdoctor/models/medicine/medicine_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_receipt.freezed.dart';
part 'new_receipt.g.dart';

@freezed
class NewReceipt with _$NewReceipt {
  const factory NewReceipt({
    required DateTime date,
    required String patientId,
    required String doctorId,
    required List<MedicineReceipt> medicines,
  }) = _NewReceipt;

  factory NewReceipt.fromJson(Map<String, Object?> json) =>
      _$NewReceiptFromJson(json);
}
