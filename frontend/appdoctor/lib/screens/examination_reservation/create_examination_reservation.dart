import 'package:appdoctor/bloc/doctor_examination_reservation/doctor_examination_reservation_bloc.dart';
import 'package:appdoctor/bloc/doctors/doctors_bloc.dart';
import 'package:appdoctor/menu/appatient_drawer.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/models/examinationReservation/new_examination_reservation.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/screens/welcome_patient_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:appdoctor/styles/widget_styles.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateExaminationReservation extends StatefulWidget {
  const CreateExaminationReservation({super.key});

  static const routeName = '/create-examination-reservation';

  @override
  State<CreateExaminationReservation> createState() =>
      _CreateExaminationReservationState();
}

class _CreateExaminationReservationState
    extends State<CreateExaminationReservation> {
  final _formKey = GlobalKey<FormState>();

  String? doctorId;
  String? patientProblem;
  DateTime? dateFrom;
  DateTime? dateTo;

  void _tryAdd() async {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if (isValid != null && isValid) {
      _formKey.currentState?.save();

      var prefs = await SharedPreferences.getInstance();

      NewExaminationReservation newExaminationReservation =
          NewExaminationReservation(
        dateFrom: dateFrom!,
        dateTo: dateTo!,
        patientProblem: patientProblem!,
        doctorId: doctorId!,
        patientId: prefs.getString("patientId"),
      );
      // ignore: use_build_context_synchronously
      BlocProvider.of<DoctorExaminationReservationBloc>(context).add(
        DoctorExaminationReservationEvent.addNewExaminationReservation(
            newExaminationReservation),
      );
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .pushReplacementNamed(WelcomePatientScreen.routeName);
    }
  }

  @override
  void didChangeDependencies() {
    BlocProvider.of<DoctorsBloc>(context).add(
      const DoctorsEvent.load(),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      drawer: AppPatientDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopImageWidget(
              imagePath: "assets/images/examination_reservation.png",
              blendMode: BlendMode.color,
            ),
            const Text(
              "Új foglalás leadása",
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    BlocBuilder<DoctorsBloc, DoctorsState>(
                      builder: ((context, state) {
                        return state.when(
                          loading: (() {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }),
                          loaded: ((doctors) {
                            return DropdownFormField<Map<String, dynamic>>(
                              onEmptyActionPressed: () async {},
                              decoration:
                                  WidgetStyle.textFormFieldInputDecoration(
                                "Doktor kiválasztása",
                                Icons.person,
                              ),
                              onSaved: (dynamic str) {
                                if (str != null) {
                                  doctorId = str['id'] as String;
                                }
                              },
                              onChanged: (dynamic str) {},
                              displayItemFn: (dynamic item) => item != null
                                  ? Text(
                                      "${item['namePrefix'] as String} ${item['lastName'] as String} ${item['firstName'] as String}",
                                    )
                                  : const Text(""),
                              findFn: (dynamic str) async =>
                                  doctors.map((e) => e.toJson()).toList(),
                              selectedFn: (dynamic item1, dynamic item2) {
                                if (item1 != null && item2 != null) {
                                  return item1['id'] == item2['id'];
                                }
                                return false;
                              },
                              filterFn: (dynamic item, str) =>
                                  item['firstName']
                                          .toLowerCase()
                                          .indexOf(str.toLowerCase()) >=
                                      0 ||
                                  item['lastName']
                                          .toLowerCase()
                                          .indexOf(str.toLowerCase()) >=
                                      0,
                              dropdownItemFn: (dynamic item,
                                      int position,
                                      bool focused,
                                      bool selected,
                                      Function() onTap) =>
                                  ListTile(
                                title: Text(
                                    "${item['namePrefix'] as String} ${item['lastName'] as String} ${item['firstName'] as String}"),
                                tileColor: focused
                                    ? const Color.fromARGB(20, 0, 0, 0)
                                    : Colors.transparent,
                                onTap: onTap,
                              ),
                            );
                          }),
                          error: ((message) {
                            return Center(
                              child: Text(message),
                            );
                          }),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Mettől:",
                        style: TextStyle(
                          color: AppDoctorStyles.cardColor,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          dateFrom != null
                              ? DateFormat('yyyy. MM. dd. HH:mm')
                                  .format(dateFrom!)
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
                                      dateFrom = dateTime;
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
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Meddig:",
                        style: TextStyle(
                          color: AppDoctorStyles.cardColor,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          dateTo != null
                              ? DateFormat('yyyy. MM. dd. HH:mm')
                                  .format(dateTo!)
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
                                      dateTo = dateTime;
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
                        "Betegség",
                        Icons.sick,
                      ),
                      onSaved: (value) {
                        patientProblem = value ?? "";
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
