import 'package:appdoctor/models/referral/referral.dart';
import 'package:appdoctor/screens/_common_widgets/bordered_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class ReferralTile extends StatelessWidget {
  const ReferralTile({super.key, required this.referral});

  final Referral referral;

  @override
  Widget build(BuildContext context) {
    return BorderedContainer(
      widget: Column(
        children: [
          Text(DateFormat('yyyy. MMMM. dd.')
              .format(referral.examinationDate)
              .toString()),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Kezelőorvos:"),
                    Text(referral.examinationReservation.doctorFullName),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Diagnózis:"),
                    Text(referral.diagnoses),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Tünetek:"),
                    Text(referral.examinationReservation.patientProblem),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Jelentkezés:"),
                    Text(referral.examinationReservation.isAccepted
                        ? "Elfogadva"
                        : "Nincs elfogadva"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Lezárva:"),
                    Text(referral.examinationReservation.isResolved
                        ? "Lezárva"
                        : "Nincs lezárva"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
