import 'package:appdoctor/api/user_api.dart';
import 'package:appdoctor/models/users/doctor.dart';
import 'package:appdoctor/models/users/doctor_preview.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorBloc() : super(const _Loading()) {
    on<_LoginDoctor>(
      (event, emit) async {
        var loggedInDoctor = await UserApi.getDoctorById(event.doctorId);
        if (loggedInDoctor != null) {
          emit(_Loaded(loggedInDoctor!));
        } else {
          emit(const _Error("Nem sikerült betölteni a felhasználót."));
        }
      },
    );
  }
}
