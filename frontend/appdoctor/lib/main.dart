import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/screens/welcome_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppDoctor',
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!),
      theme: ThemeData(
        primaryColor: AppDoctorStyles.primaryColor,
        backgroundColor: AppDoctorStyles.backgroundColor,
        secondaryHeaderColor: AppDoctorStyles.secondaryColor,
        cardColor: AppDoctorStyles.cardColor,
        canvasColor: AppDoctorStyles.canvasColor,
        appBarTheme: const AppBarTheme(
          color: AppDoctorStyles.cardColor,
          elevation: 1,
        ),
        fontFamily: 'Coolvetica',
        buttonTheme: const ButtonThemeData(
          buttonColor: AppDoctorStyles.cardColor,
        ),
        textTheme:
            const TextTheme().apply(displayColor: AppDoctorStyles.primaryColor),
      ),
      home: const AuthScreen(
        isRegistration: false,
      ),
      routes: {
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
      },
    );
  }
}
