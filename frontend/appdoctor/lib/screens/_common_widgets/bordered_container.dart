import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';

class BorderedContainer extends StatelessWidget {
  const BorderedContainer({required this.widget, super.key});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppDoctorStyles.cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: widget,
        ),
      ),
    );
  }
}
