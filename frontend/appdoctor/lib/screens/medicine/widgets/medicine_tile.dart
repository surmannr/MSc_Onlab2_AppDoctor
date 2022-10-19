import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MedicineTile extends StatelessWidget {
  const MedicineTile({required this.medicine, super.key});

  final MedicinePreview medicine;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
              const Flexible(
                flex: 4,
                child: Icon(
                  Icons.medication,
                  color: Colors.white,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 10,
                child: Text(
                  medicine.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
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
