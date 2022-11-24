import 'package:appdoctor/api/receipt_api.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_receipt_event.dart';
part 'patient_receipt_state.dart';
part 'patient_receipt_bloc.freezed.dart';

class PatientReceiptBloc
    extends Bloc<PatientReceiptEvent, PatientReceiptState> {
  PatientReceiptBloc(@visibleForTesting dynamic receiptApi)
      : super(const _Loading()) {
    on<_LoadPatientReceipts>(
      (event, emit) async {
        if (receiptApi != null) {
          var receipts = await receiptApi.getPatientRecipes(event.patientId);
          if (receipts.length > 0) {
            emit(_Loaded(receipts));
          } else {
            emit(const _Error("Nincsen egy recept sem."));
          }
        } else {
          var receipts = await ReceiptApi.getPatientRecipes(event.patientId);
          if (receipts != []) {
            emit(_Loaded(receipts));
          } else {
            emit(const _Error("Nincsen egy recept sem."));
          }
        }
      },
    );
  }
}
