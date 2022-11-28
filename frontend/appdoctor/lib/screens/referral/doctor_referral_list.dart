import 'package:appdoctor/bloc/doctor_referral/doctor_referral_bloc.dart';
import 'package:appdoctor/bloc/patient_referral/patient_referral_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/menu/appdoc_drawer.dart';
import 'package:appdoctor/screens/_common_widgets/referral_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorReferralList extends StatefulWidget {
  const DoctorReferralList({super.key});

  static const routeName = '/doctor-referral-list';

  @override
  State<DoctorReferralList> createState() => _DoctorReferralListState();
}

class _DoctorReferralListState extends State<DoctorReferralList> {
  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var doctorId = value.getString("doctorId");
        BlocProvider.of<DoctorReferralBloc>(context).add(
          DoctorReferralEvent.getReferralsByDoctorId(doctorId),
        );
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      drawer: AppDocDrawer(),
      body: BlocBuilder<DoctorReferralBloc, DoctorReferralState>(
        builder: (context, state) {
          return state.when(
            loadingDoctorReferrals: (() {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
            errorDoctorReferral: (message) {
              return Center(
                child: Text(message),
              );
            },
            loadedDoctorReferrals: ((referrals) {
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
