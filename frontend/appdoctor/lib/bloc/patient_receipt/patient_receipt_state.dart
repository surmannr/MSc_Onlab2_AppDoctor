part of 'patient_receipt_bloc.dart';

@freezed
class PatientReceiptState with _$PatientReceiptState {
  const factory PatientReceiptState.loading() = _Loading;
  const factory PatientReceiptState.loaded(List<Receipt> receipts) = _Loaded;
  const factory PatientReceiptState.error(String message) = _Error;
}
