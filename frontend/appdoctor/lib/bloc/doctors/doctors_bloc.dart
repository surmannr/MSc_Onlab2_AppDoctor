import 'package:appdoctor/api/user_api.dart';
import 'package:appdoctor/models/users/doctor_preview.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_event.dart';
part 'doctors_state.dart';
part 'doctors_bloc.freezed.dart';

class DoctorsBloc extends Bloc<DoctorsEvent, DoctorsState> {
  DoctorsBloc() : super(const _Loading()) {
    on<_Load>(
      (event, emit) async {
        var doctors = await UserApi.getDoctors();
        if (doctors != []) {
          emit(_Loaded(doctors));
        } else {
          emit(const _Error("Nincsen egy orvos sem."));
        }
      },
    );
  }
}
