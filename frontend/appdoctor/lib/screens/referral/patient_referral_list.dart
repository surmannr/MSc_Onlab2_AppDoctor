import 'package:appdoctor/bloc/patient_referral/patient_referral_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/screens/_common_widgets/referral_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PatientReferralList extends StatefulWidget {
  const PatientReferralList({super.key});

  static const routeName = '/patient-referral-list';

  @override
  State<PatientReferralList> createState() => _PatientReferralListState();
}

class _PatientReferralListState extends State<PatientReferralList> {
  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var patientId = value.getString("patientId");
        BlocProvider.of<PatientReferralBloc>(context).add(
          PatientReferralEvent.getReferralsByPatientId(patientId),
        );
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<PatientReferralBloc, PatientReferralState>(
        builder: (context, state) {
          return state.when(
            loading: (() {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
            error: (message) {
              return Center(
                child: Text(message),
              );
            },
            loaded: ((referrals) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text(
                        "Beutalók:",
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
                          itemCount: referrals.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ReferralTile(
                              referral: referrals[index],
                            );
                          }),
                    ],
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
