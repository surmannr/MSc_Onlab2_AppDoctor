import 'package:appdoctor/menu/drawer_tile.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/screens/receipt/doctor_receipt_list.dart';
import 'package:appdoctor/screens/referral/doctor_referral_list.dart';
import 'package:appdoctor/screens/welcome_doctor_screen.dart';
import 'package:flutter/material.dart';

class AppDocDrawer extends Drawer {
  AppDocDrawer({super.key})
      : super(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              TopImageWidget(
                  imagePath: 'assets/images/doctor.png',
                  blendMode: BlendMode.color),
              DrawerTile(
                title: "Főoldal",
                navigateTo: WelcomeDoctorScreen(),
              ),
              DrawerTile(
                title: "Kiadott receptek",
                navigateTo: DoctorReceiptList(),
              ),
              DrawerTile(
                title: "Kiadott beutalók",
                navigateTo: DoctorReferralList(),
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
