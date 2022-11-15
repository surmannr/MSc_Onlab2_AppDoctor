import 'package:appdoctor/bloc/doctor_examination_reservation/doctor_examination_reservation_bloc.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class ExaminationReservationTile extends StatelessWidget {
  const ExaminationReservationTile(
      {super.key, required this.examinationReservation});

  final ExaminationReservation examinationReservation;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: ((context) {
              BlocProvider.of<DoctorExaminationReservationBloc>(context).add(
                DoctorExaminationReservationEvent.acceptExaminationReservation(
                    examinationReservation.id, true),
              );
            }),
            backgroundColor: const Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.check_box,
            label: 'Elfogad',
          ),
          SlidableAction(
            onPressed: ((context) {
              BlocProvider.of<DoctorExaminationReservationBloc>(context).add(
                DoctorExaminationReservationEvent.resolveExaminationReservation(
                    examinationReservation.id, true),
              );
            }),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            icon: Icons.file_download_done,
            label: 'Megold',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: ((context) {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title:
                      Text('${examinationReservation.patientFullName} panasza'),
                  content: Text(examinationReservation.patientProblem),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Rendben'),
                    ),
                  ],
                ),
              );
            }),
            backgroundColor: const Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.info_outlined,
            label: 'Infó',
          ),
        ],
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            isThreeLine: true,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (examinationReservation.isAccepted &&
                        examinationReservation.isResolved) ...{
                      const Icon(
                        Icons.check,
                      )
                    } else if (examinationReservation.isAccepted &&
                        !examinationReservation.isResolved) ...{
                      const Icon(
                        Icons.hourglass_full,
                      )
                    } else ...{
                      const Icon(
                        Icons.cancel,
                      ),
                    }
                  ],
                ),
              ],
            ),
            title: Column(
              children: [
                const Text(
                  "Foglalás azonosító:",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(examinationReservation.id),
              ],
            ),
            subtitle: Column(
              children: [
                Text(
                  "Páciens neve: ${examinationReservation.patientFullName}",
                ),
                Text(
                  "${DateFormat('yyyy. MM. dd. HH:mm').format(examinationReservation.dateFrom).toString()} - ${DateFormat('yyyy. MM. dd. HH:mm').format(examinationReservation.dateTo).toString()}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
