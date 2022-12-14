import 'package:appdoctor/bloc/doctor/doctor_bloc.dart';
import 'package:appdoctor/bloc/patient/patient_bloc.dart';
import 'package:appdoctor/menu/appatient_drawer.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/screens/examination_reservation/create_examination_reservation.dart';
import 'package:appdoctor/screens/examination_reservation/examination_reservation_list.dart';
import 'package:appdoctor/screens/medicine/medicine_list.dart';
import 'package:appdoctor/screens/receipt/create_receipt.dart';
import 'package:appdoctor/screens/receipt/patient_receipt_list.dart';
import 'package:appdoctor/screens/referral/create_referral.dart';
import 'package:appdoctor/screens/referral/patient_referral_list.dart';
import 'package:appdoctor/screens/users/doctors_list.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePatientScreen extends StatefulWidget {
  const WelcomePatientScreen({super.key});

  static const routeName = '/welcome-patient';

  @override
  State<WelcomePatientScreen> createState() => _WelcomePatientScreenState();
}

class _WelcomePatientScreenState extends State<WelcomePatientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      drawer: AppPatientDrawer(),
      body: BlocBuilder<PatientBloc, PatientState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (patient) {
              return Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: AppDoctorStyles.cardColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Text(
                                "Sz??p napot ${patient.namePrefix} ${patient.lastName} ${patient.firstName}!",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 1.1,
                              child: Image.asset(
                                'assets/images/patient.png',
                                width: double.infinity,
                                fit: BoxFit.fitHeight,
                                color: AppDoctorStyles.cardColor,
                                colorBlendMode: BlendMode.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "El??rhet?? szolg??ltat??sok",
                          style: TextStyle(
                            color: AppDoctorStyles.cardColor,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    serviceTileBuilder(
                      medicalIcon: Icons.people,
                      serviceName: "Orvosok list??ja",
                      context: context,
                      navigationRoute: DoctorsListScreen.routeName,
                    ),
                    serviceTileBuilder(
                      medicalIcon: Icons.medical_services,
                      serviceName: "Foglal??s jelentkez??s",
                      context: context,
                      navigationRoute: CreateExaminationReservation.routeName,
                    ),
                    serviceTileBuilder(
                      medicalIcon: Icons.content_paste,
                      serviceName: "Receptek megtekint??se",
                      context: context,
                      navigationRoute: PatientReceiptList.routeName,
                    ),
                    serviceTileBuilder(
                      medicalIcon: Icons.content_paste,
                      serviceName: "Beutal??k megtekint??se",
                      context: context,
                      navigationRoute: PatientReferralList.routeName,
                    ),
                  ],
                ),
              );
            },
            error: (message) {
              return Center(
                child: Text(message),
              );
            },
          );
        },
      ),
    );
  }
}

Widget serviceTileBuilder({
  required IconData medicalIcon,
  required String serviceName,
  required BuildContext context,
  required String navigationRoute,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(navigationRoute);
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppDoctorStyles.cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              const Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 4,
                child: Icon(
                  medicalIcon,
                  color: Colors.white,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 10,
                child: Text(
                  serviceName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
