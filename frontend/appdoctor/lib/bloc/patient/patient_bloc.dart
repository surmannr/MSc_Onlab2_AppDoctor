import 'package:appdoctor/api/user_api.dart';
import 'package:appdoctor/models/users/patient.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_event.dart';
part 'patient_state.dart';
part 'patient_bloc.freezed.dart';

class PatientBloc extends Bloc<PatientEvent, PatientState> {
  PatientBloc() : super(const _Loading()) {
    on<_LoginPatient>((event, emit) async {
      var loggedInPatient = await UserApi.getPatientById(event.patientId);
      if (loggedInPatient != null) {
        emit(_Loaded(loggedInPatient!));
      } else {
        emit(const _Error("Nem sikerült betölteni a felhasználót."));
      }
    });
  }
}
