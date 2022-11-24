import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:appdoctor/screens/_common_widgets/bordered_container.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReceiptDetails extends StatelessWidget {
  const ReceiptDetails({
    required this.heroTag,
    required this.receipt,
    super.key,
  });

  final String heroTag;
  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Scaffold(
        appBar: AppDocAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TopImageWidget(
                imagePath: 'assets/images/receipt.png',
                blendMode: BlendMode.modulate,
              ),
              BorderedContainer(
                widget: Column(
                  children: [
                    const Text(
                      "Recept azonosító:",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(receipt.id),
                  ],
                ),
              ),
              BorderedContainer(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      receipt.patientFullName,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      DateFormat('yyyy. MMMM. dd.')
                          .format(receipt.date)
                          .toString(),
                    ),
                  ],
                ),
              ),
              BorderedContainer(
                widget: Column(
                  children: [
                    const Text(
                      "Felírt gyógyszerek:",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: receipt.medicines.length,
                      itemBuilder: (BuildContext context, int index) {
                        var medicine = receipt.medicines[index];
                        return Row(
                          children: [
                            Text("${medicine.quantity}x"),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(medicine.name),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Aláírás",
                  style: TextStyle(
                    color: AppDoctorStyles.cardColor,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 50,
                      vertical: 10.0),
                  child: Text(
                    receipt.doctorFullName,
                    style: const TextStyle(
                      color: AppDoctorStyles.cardColor,
                      fontSize: 50,
                      height: 1.2,
                      fontFamily: "Amertha",
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
