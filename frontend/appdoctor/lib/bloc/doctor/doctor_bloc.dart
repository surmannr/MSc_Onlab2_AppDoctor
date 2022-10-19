import 'package:appdoctor/api/user_api.dart';
import 'package:appdoctor/models/users/doctor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';
part 'doctor_bloc.g.dart';

class DoctorBloc extends HydratedBloc<DoctorEvent, DoctorState> {
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

  @override
  DoctorState? fromJson(Map<String, dynamic> json) {
    return DoctorState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DoctorState state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }
}
