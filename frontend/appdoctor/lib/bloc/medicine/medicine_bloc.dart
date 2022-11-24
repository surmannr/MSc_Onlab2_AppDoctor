import 'package:appdoctor/api/medicine_api.dart';
import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_event.dart';
part 'medicine_state.dart';
part 'medicine_bloc.freezed.dart';
part 'medicine_bloc.g.dart';

class MedicineBloc extends Bloc<MedicineEvent, MedicineState> {
  MedicineBloc(@visibleForTesting dynamic api)
      : super(const _LoadingMedicinePreview()) {
    on<_GetMedicinePreviews>((event, emit) async {
      if (api != null) {
        var medicines = await api.getMedicines();
        if (medicines != null) {
          emit(_LoadedMedicinePreview(medicines));
        } else {
          emit(const _ErrorMedicinePreview(
              "Nem sikerült betölteni a gyógyszereket."));
        }
      } else {
        var medicines = await MedicineApi.getMedicines();
        if (medicines != null) {
          emit(_LoadedMedicinePreview(medicines));
        } else {
          emit(const _ErrorMedicinePreview(
              "Nem sikerült betölteni a gyógyszereket."));
        }
      }
    });

    on<_AddNewMedicine>(
      (event, emit) async {
        if (api != null) {
          var created = await api.addNewMedicine(
              event.name, event.diseases, event.inStock);

          if (created != null) {
            emit(const _LoadingMedicinePreview());
            if (created) {
              var medicines = await api.getMedicines();
              if (medicines != null) {
                emit(_LoadedMedicinePreview(medicines));
              } else {
                emit(const _ErrorMedicinePreview(
                    "Nem sikerült betölteni a gyógyszereket."));
              }
            } else {
              emit(const _ErrorMedicinePreview(
                  "Nem sikerült a gyógyszer hozzáadása."));
            }
          } else {
            emit(const _ErrorMedicinePreview(
                "Nem sikerült a gyógyszer hozzáadásának feldolgozása a szerveren."));
          }
        } else {
          var created = await MedicineApi.addNewMedicine(
              event.name, event.diseases, event.inStock);

          if (created != null) {
            emit(const _LoadingMedicinePreview());
            if (created) {
              var medicines = await MedicineApi.getMedicines();
              if (medicines != null) {
                emit(_LoadedMedicinePreview(medicines));
              } else {
                emit(const _ErrorMedicinePreview(
                    "Nem sikerült betölteni a gyógyszereket."));
              }
            } else {
              emit(const _ErrorMedicinePreview(
                  "Nem sikerült a gyógyszer hozzáadása."));
            }
          } else {
            emit(const _ErrorMedicinePreview(
                "Nem sikerült a gyógyszer hozzáadásának feldolgozása a szerveren."));
          }
        }
      },
    );
  }
}
