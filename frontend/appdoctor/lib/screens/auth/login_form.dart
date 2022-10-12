import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:appdoctor/styles/widget_styles.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.submitLogin});

  final void Function(String email, String password) submitLogin;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String? _userName = "";
  String? _userPassword = "";

  void _trySubmit() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if (isValid != null && isValid) {
      _formKey.currentState?.save();
      widget.submitLogin(_userName!, _userPassword!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "A belépéshez felhasználónév szükséges!";
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Név",
                Icons.person,
              ),
              onSaved: (value) {
                _userName = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 7) {
                  return "A jelszó mérete legalább 7 karakter!";
                }
                return null;
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Jelszó",
                Icons.lock,
              ),
              onSaved: (value) {
                _userPassword = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: WidgetStyle.buttonStyle,
                    onPressed: _trySubmit,
                    clipBehavior: Clip.hardEdge,
                    child: const Text('Bejelentkezés'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: WidgetStyle.buttonStyle,
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AuthScreen(
                              isRegistration: true,
                            ),
                          ));
                    },
                    clipBehavior: Clip.hardEdge,
                    child: const Text('Regisztráció'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
