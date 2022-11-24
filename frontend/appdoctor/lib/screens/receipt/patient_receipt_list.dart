import 'package:appdoctor/bloc/patient_receipt/patient_receipt_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/screens/_common_widgets/receipt_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PatientReceiptList extends StatefulWidget {
  const PatientReceiptList({super.key});

  static const routeName = '/patient-receipt-list';

  @override
  State<PatientReceiptList> createState() => _PatientReceiptListState();
}

class _PatientReceiptListState extends State<PatientReceiptList> {
  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var patientId = value.getString("patientId");
        BlocProvider.of<PatientReceiptBloc>(context).add(
          PatientReceiptEvent.load(patientId),
        );
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<PatientReceiptBloc, PatientReceiptState>(
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
            loaded: ((receipts) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text(
                        "Receptek:",
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
                          itemCount: receipts.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ReceiptTile(
                              receipt: receipts[index],
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
