import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_event.dart';
part 'patient_state.dart';
part 'patient_bloc.freezed.dart';

class PatientBloc extends Bloc<PatientEvent, PatientState> {
  PatientBloc() : super(_Initial()) {
    on<PatientEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
