import 'package:appdoctor/api/receipt_api.dart';
import 'package:appdoctor/models/medicine/medicine_receipt.dart';
import 'package:appdoctor/models/receipt/new_receipt.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_receipt_event.dart';
part 'doctor_receipt_state.dart';
part 'doctor_receipt_bloc.freezed.dart';

class DoctorReceiptBloc extends Bloc<DoctorReceiptEvent, DoctorReceiptState> {
  DoctorReceiptBloc() : super(const _LoadingDoctorReceiptState()) {
    on<_GetReceiptsByDoctorId>(
      (event, emit) async {
        var recipes = await ReceiptApi.getRecipes(event.doctorId);
        emit(_LoadedDoctorReceiptState(recipes));
      },
    );

    on<_AddNewReceipt>(
      (event, emit) async {
        var isSuccess = await ReceiptApi.addNewReceipt(event.newReceipt);
        if (isSuccess!) {
          var recipes = await ReceiptApi.getRecipes(event.newReceipt.doctorId);
          emit(_LoadedDoctorReceiptState(recipes));
        } else {
          emit(const _ErrorDoctorReceiptState(
              "Nem sikerült betölteni a recepteket."));
        }
      },
    );
  }
}
