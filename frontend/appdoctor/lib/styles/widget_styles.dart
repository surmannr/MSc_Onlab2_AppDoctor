import 'package:flutter/material.dart';

import 'colors.dart';

class WidgetStyle {
  static const ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(AppDoctorStyles.cardColor),
  );

  static InputDecoration textFormFieldInputDecoration(
          String label, IconData iconData) =>
      InputDecoration(
        prefixIcon: Icon(
          iconData,
          color: AppDoctorStyles.cardColor,
        ),
        labelText: label,
        iconColor: AppDoctorStyles.cardColor,
        labelStyle: const TextStyle(color: AppDoctorStyles.cardColor),
        prefixIconColor: AppDoctorStyles.cardColor,
        suffixIconColor: AppDoctorStyles.cardColor,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppDoctorStyles.cardColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppDoctorStyles.cardColor,
            width: 2.0,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppDoctorStyles.cardColor,
            width: 2.0,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppDoctorStyles.cardColor,
            width: 2.0,
          ),
        ),
      );
}
