import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({required this.title, required this.navigateTo, super.key});

  final String title;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: AppDoctorStyles.cardColor,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onTap: (() {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: ((context) {
              return navigateTo;
            })));
          }),
        ),
      ),
    );
  }
}
