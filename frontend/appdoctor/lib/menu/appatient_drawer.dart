import 'package:appdoctor/menu/drawer_tile.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/screens/welcome_patient_screen.dart';
import 'package:flutter/material.dart';

class AppPatientDrawer extends Drawer {
  AppPatientDrawer({super.key})
      : super(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              TopImageWidget(
                  imagePath: 'assets/images/patient.png',
                  blendMode: BlendMode.color),
              DrawerTile(
                title: "Főoldal",
                navigateTo: WelcomePatientScreen(),
              ),
              DrawerTile(
                  title: "Kijelentkezés",
                  navigateTo: AuthScreen(
                    isRegistration: false,
                  )),
            ],
          ),
        );
}
