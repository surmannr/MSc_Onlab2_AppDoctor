import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';

class TopImageWidget extends StatelessWidget {
  const TopImageWidget(
      {super.key, required this.imagePath, required this.blendMode});

  final String imagePath;
  final BlendMode blendMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AspectRatio(
            aspectRatio: 1.1,
            child: Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.fitHeight,
              color: AppDoctorStyles.cardColor,
              colorBlendMode: blendMode,
            ),
          ),
        ),
      ),
    );
  }
}
