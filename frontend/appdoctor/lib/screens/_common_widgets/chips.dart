import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:appdoctor/models/medicine/medicine_receipt.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class MedicineChips extends StatefulWidget {
  const MedicineChips(
      {required this.selectedMedicines,
      required this.removeMedicine,
      super.key});

  final List<MedicineReceipt> selectedMedicines;
  final Function(MedicineReceipt receipt) removeMedicine;

  @override
  State<MedicineChips> createState() => _MedicineChipsState();
}

class _MedicineChipsState extends State<MedicineChips> {
  @override
  Widget build(BuildContext context) {
    return MultiSelectChipDisplay(
      chipColor: AppDoctorStyles.cardColor,
      items: widget.selectedMedicines
          .map((e) => MultiSelectItem(e, e.name))
          .toList(),
      textStyle: const TextStyle(
        color: Colors.white,
      ),
      onTap: (value) {
        widget.removeMedicine(value);
        return value;
      },
    );
  }
}
