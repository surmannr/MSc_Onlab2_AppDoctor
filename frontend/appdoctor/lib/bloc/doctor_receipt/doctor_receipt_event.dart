part of 'doctor_receipt_bloc.dart';

@freezed
class DoctorReceiptEvent with _$DoctorReceiptEvent {
  const factory DoctorReceiptEvent.getReceiptsByDoctorId(String doctorId) =
      _GetReceiptsByDoctorId;
  const factory DoctorReceiptEvent.addNewReceipt(NewReceipt newReceipt) =
      _AddNewReceipt;
}
