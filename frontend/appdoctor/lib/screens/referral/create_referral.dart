import 'package:appdoctor/api/examination_reservation_api.dart';
import 'package:appdoctor/bloc/doctor_referral/doctor_referral_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';
import 'package:appdoctor/models/referral/new_referral.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/screens/welcome_doctor_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:appdoctor/styles/widget_styles.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateReferral extends StatefulWidget {
  const CreateReferral({super.key});

  static const routeName = '/create-referral';

  @override
  State<CreateReferral> createState() => _CreateReferralState();
}

class _CreateReferralState extends State<CreateReferral> {
  final _formKey = GlobalKey<FormState>();

  Future<List<ExaminationReservation>>? examinationReservationAsync;

  String? examinationReservationId;
  DateTime? examinationDate;
  String diagnoses = "";

  void _tryAdd() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if (isValid != null && isValid) {
      _formKey.currentState?.save();

      NewReferral newReferral = NewReferral(
        examinationDate: examinationDate!,
        examinationReservationId: examinationReservationId!,
        diagnoses: diagnoses,
      );
      BlocProvider.of<DoctorReferralBloc>(context).add(
        DoctorReferralEvent.addNewReferral(newReferral),
      );
      Navigator.of(context).pushReplacementNamed(WelcomeDoctorScreen.routeName);
    }
  }

  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var doctorId = value.getString("doctorId");
        examinationReservationAsync =
            ExaminationReservationApi.getExaminationReservationByDoctorId(
                doctorId);
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopImageWidget(
              imagePath: "assets/images/referral.png",
              blendMode: BlendMode.color,
            ),
            const Text(
              "Új beutaló írása",
              style: TextStyle(
                color: AppDoctorStyles.cardColor,
                fontSize: 25,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 5,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    FutureBuilder(
                      future: examinationReservationAsync,
                      builder: ((context, snapshot) {
                        if (snapshot.hasData) {
                          return DropdownFormField<Map<String, dynamic>>(
                            onEmptyActionPressed: () async {},
                            decoration:
                                WidgetStyle.textFormFieldInputDecoration(
                              "Foglalás",
                              Icons.post_add,
                            ),
                            onSaved: (dynamic str) {
                              if (str != null) {
                                examinationReservationId = str['id'] as String;
                              }
                            },
                            onChanged: (dynamic str) {},
                            displayItemFn: (dynamic item) => item != null
                                ? Text(
                                    item['patientFullName'] as String,
                                  )
                                : const Text(""),
                            findFn: (dynamic str) async =>
                                snapshot.data!.map((e) => e.toJson()).toList(),
                            selectedFn: (dynamic item1, dynamic item2) {
                              if (item1 != null && item2 != null) {
                                return item1['id'] == item2['id'];
                              }
                              return false;
                            },
                            filterFn: (dynamic item, str) =>
                                item['patientFullName']
                                    .toLowerCase()
                                    .indexOf(str.toLowerCase()) >=
                                0,
                            dropdownItemFn: (dynamic item,
                                    int position,
                                    bool focused,
                                    bool selected,
                                    Function() onTap) =>
                                ListTile(
                              title: Text("${item['patientFullName']}"),
                              subtitle: Text(
                                DateFormat('yyyy-MM-dd')
                                        .format(
                                            DateTime.parse(item['dateFrom']))
                                        .toString() ??
                                    '',
                              ),
                              tileColor: focused
                                  ? const Color.fromARGB(20, 0, 0, 0)
                                  : Colors.transparent,
                              onTap: onTap,
                            ),
                          );
                        } else {
                          return const Text(
                              "Nincs foglalás, amihez a beutaló köthető.");
                        }
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          examinationDate != null
                              ? DateFormat('yyyy. MM. dd. HH:mm')
                                  .format(examinationDate!)
                                  .toString()
                              : 'Nincs dátum kiválasztva',
                          style: const TextStyle(
                            color: AppDoctorStyles.cardColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: WidgetStyle.buttonStyle,
                              onPressed: () {
                                DatePicker.showDatePicker(
                                  context,
                                  dateFormat: 'yyyy. MM. dd. HH:mm',
                                  initialDateTime: DateTime.now(),
                                  minDateTime: DateTime(2000),
                                  maxDateTime: DateTime(3000),
                                  onMonthChangeStartWithFirstDate: true,
                                  onConfirm: (dateTime, List<int> index) {
                                    setState(() {
                                      examinationDate = dateTime;
                                    });
                                  },
                                );
                              },
                              clipBehavior: Clip.hardEdge,
                              child: const Text('Dátum kiválasztása'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "A páciens diagnózisának kitöltése kötelező!";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.multiline,
                      minLines: 3,
                      maxLines: 10,
                      decoration: WidgetStyle.textFormFieldInputDecoration(
                        "Diagnózis",
                        Icons.sick,
                      ),
                      onSaved: (value) {
                        diagnoses = value ?? "";
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: WidgetStyle.buttonStyle,
                        onPressed: _tryAdd,
                        clipBehavior: Clip.hardEdge,
                        child: const Text('Beutaló megírása'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
