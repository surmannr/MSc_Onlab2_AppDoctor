import 'package:appdoctor/bloc/doctor_receipt/doctor_receipt_bloc.dart';
import 'package:appdoctor/bloc/patient_receipt/patient_receipt_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/menu/appdoc_drawer.dart';
import 'package:appdoctor/screens/_common_widgets/receipt_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorReceiptList extends StatefulWidget {
  const DoctorReceiptList({super.key});

  static const routeName = '/doctor-receipt-list';

  @override
  State<DoctorReceiptList> createState() => _DoctorReceiptListState();
}

class _DoctorReceiptListState extends State<DoctorReceiptList> {
  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var doctorId = value.getString("doctorId");
        BlocProvider.of<DoctorReceiptBloc>(context).add(
          DoctorReceiptEvent.getReceiptsByDoctorId(doctorId),
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
      body: BlocBuilder<DoctorReceiptBloc, DoctorReceiptState>(
        builder: (context, state) {
          return state.when(
            loadingDoctorReceipts: (() {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
            errorDoctorReceipt: (message) {
              return Center(
                child: Text(message),
              );
            },
            loadedDoctorReceipts: ((receipts) {
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
