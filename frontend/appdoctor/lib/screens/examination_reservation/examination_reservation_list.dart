import 'package:appdoctor/bloc/doctor_examination_reservation/doctor_examination_reservation_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/screens/examination_reservation/widgets/examination_reservation_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExaminationReservationList extends StatefulWidget {
  const ExaminationReservationList({super.key});

  static const routeName = '/examinationReservations';

  @override
  State<ExaminationReservationList> createState() =>
      _ExaminationReservationListState();
}

class _ExaminationReservationListState
    extends State<ExaminationReservationList> {
  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var doctorId = value.getString("doctorId");
        BlocProvider.of<DoctorExaminationReservationBloc>(context).add(
          DoctorExaminationReservationEvent
              .getExaminationReservationsByDoctorId(doctorId),
        );
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<DoctorExaminationReservationBloc,
          DoctorExaminationReservationState>(
        builder: ((context, state) {
          return state.when(loadingDoctorExaminationReservations: (() {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }), loadedDoctorExaminationReservations: ((examinationReservations) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text(
                      "Foglalások:",
                      style: TextStyle(
                        color: AppDoctorStyles.cardColor,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: examinationReservations.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ExaminationReservationTile(
                            examinationReservation:
                                examinationReservations[index],
                          );
                        }),
                  ],
                ),
              ),
            );
          }), errorExaminationReservation: ((message) {
            return Center(
              child: Text(message),
            );
          }));
        }),
      ),
    );
  }
}
