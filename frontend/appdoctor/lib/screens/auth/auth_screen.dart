import 'package:appdoctor/screens/auth/login_form.dart';
import 'package:appdoctor/screens/auth/registration_form.dart';
import 'package:appdoctor/screens/welcome_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:status_bar_control/status_bar_control.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.isRegistration});

  final bool isRegistration;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void _submitLoginForm(String email, String password) async {
    String message = "Hiba a bejelentkezés során";
    try {
      /* String? userId = await Auth.signInWithEmailAndPassword(email, password, context);

      if (userId != null) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      }*/
      StatusBarControl.setHidden(false);
      Navigator.pushReplacementNamed(context, WelcomeScreen.routeName);
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.red.shade700,
      ));
    }
  }

  void _submitRegistrationForm(
      {required String firstName,
      required String lastName,
      required String namePrefix,
      required String address,
      required DateTime birthDate,
      required String email,
      required String password}) async {
    String message = "Hiba a regisztráció során.";
    try {
      /* String? userId = await Auth.signInWithEmailAndPassword(email, password, context);

      if (userId != null) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      }*/
      StatusBarControl.setHidden(false);
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.red.shade700,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    StatusBarControl.setHidden(true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            widget.isRegistration
                ? const Text(
                    'Regisztráció',
                    style: TextStyle(
                      fontSize: 35.0,
                    ),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AspectRatio(
                        aspectRatio: 1.1,
                        child: Image.asset(
                          'assets/images/login.png',
                          width: double.infinity,
                          fit: BoxFit.fitHeight,
                          color: AppDoctorStyles.cardColor,
                          colorBlendMode: BlendMode.color,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Bejelentkezés',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
            widget.isRegistration
                ? RegistrationForm(
                    submitRegistration: _submitRegistrationForm,
                  )
                : LoginForm(submitLogin: _submitLoginForm)
          ],
        ),
      ),
    );
  }
}
