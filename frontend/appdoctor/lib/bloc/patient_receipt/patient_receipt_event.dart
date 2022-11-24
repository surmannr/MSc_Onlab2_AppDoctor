part of 'patient_receipt_bloc.dart';

@freezed
class PatientReceiptEvent with _$PatientReceiptEvent {
  const factory PatientReceiptEvent.load(String patientId) =
      _LoadPatientReceipts;
}
