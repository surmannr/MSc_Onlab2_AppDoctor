import 'package:appdoctor/api/medicine_api.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'disease_event.dart';
part 'disease_state.dart';
part 'disease_bloc.freezed.dart';

class DiseaseBloc extends Bloc<DiseaseEvent, DiseaseState> {
  DiseaseBloc() : super(const _LoadingDiseases()) {
    on<_GetDiseases>((event, emit) async {
      var diseases = await MedicineApi.getDiseases();
      if (diseases != null) {
        emit(_LoadedDiseases(diseases));
      } else {
        emit(const _ErrorDiseases("Nem sikerült betölteni a gyógyszereket."));
      }
    });
  }
}
