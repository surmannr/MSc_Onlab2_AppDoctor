part of 'doctor_receipt_bloc.dart';

@freezed
class DoctorReceiptState with _$DoctorReceiptState {
  const factory DoctorReceiptState.loadingDoctorReceipts() =
      _LoadingDoctorReceiptState;
  const factory DoctorReceiptState.loadedDoctorReceipts(
      List<Receipt> receipts) = _LoadedDoctorReceiptState;
  const factory DoctorReceiptState.errorDoctorReceipt(String message) =
      _ErrorDoctorReceiptState;
}
