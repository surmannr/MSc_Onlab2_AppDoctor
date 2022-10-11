import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/styles/widget_styles.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key, required this.submitRegistration});

  final void Function(
      {required String firstName,
      required String lastName,
      required String namePrefix,
      required String address,
      required DateTime birthDate,
      required String email,
      required String password}) submitRegistration;

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String? _userFirstname = "";
  String? _userLastname = "";
  String? _userNamePrefix = "";
  String? _userPassword = "";
  String? _userPasswordAgain = "";
  String? _userEmail = "";
  String? _userAddress = "";
  DateTime? _userBirthDate = DateTime.now();

  void _trySubmit() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if (isValid != null && isValid) {
      _formKey.currentState?.save();
      widget.submitRegistration(
        firstName: _userFirstname!,
        lastName: _userLastname!,
        email: _userEmail!,
        password: _userPassword!,
        namePrefix: _userNamePrefix!,
        birthDate: _userBirthDate!,
        address: _userAddress!,
      );
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
                  return "A regisztrációhoz a vezetéknév kitöltése kötelező!";
                }
                return null;
              },
              keyboardType: TextInputType.name,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Vezetéknév",
                Icons.person,
              ),
              onSaved: (value) {
                _userLastname = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "A regisztrációhoz a keresztnév kitöltése kötelező!";
                }
                return null;
              },
              keyboardType: TextInputType.name,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Keresztnév",
                Icons.person,
              ),
              onSaved: (value) {
                _userLastname = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    validator: (value) {
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: WidgetStyle.textFormFieldInputDecoration(
                      "Előtag",
                      Icons.person,
                    ),
                    onSaved: (value) {
                      _userNamePrefix = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 3,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "A regisztrációhoz a születési dátum kitöltése kötelező!";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.datetime,
                    decoration: WidgetStyle.textFormFieldInputDecoration(
                      "Születési dátum",
                      Icons.cake,
                    ),
                    onSaved: (value) {
                      if (value != null) {
                        _userBirthDate = DateTime.tryParse(value);
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "A regisztrációhoz a lakhely kitöltése kötelező!";
                }
                return null;
              },
              keyboardType: TextInputType.streetAddress,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Lakhely",
                Icons.house,
              ),
              onSaved: (value) {
                _userAddress = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty || !value.contains('@')) {
                  return "A regisztrációhoz érvényes email cím szükséges!";
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Email cím",
                Icons.email,
              ),
              onSaved: (value) {
                _userEmail = value;
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
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 7) {
                  return "A jelszó mérete legalább 7 karakter!";
                }
                if (value != _userPassword) {
                  return "A megadott két jelszó nem egyezik meg.";
                }
                return null;
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: WidgetStyle.textFormFieldInputDecoration(
                "Jelszó újra",
                Icons.lock,
              ),
              onSaved: (value) {
                _userPasswordAgain = value;
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
                    child: const Text('Regisztráció'),
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
                              isRegistration: false,
                            ),
                          ));
                    },
                    clipBehavior: Clip.hardEdge,
                    child: const Text('Mégse'),
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
