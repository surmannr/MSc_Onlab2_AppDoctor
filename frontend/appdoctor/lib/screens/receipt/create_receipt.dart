import 'package:appdoctor/api/medicine_api.dart';
import 'package:appdoctor/api/user_api.dart';
import 'package:appdoctor/bloc/doctor/doctor_bloc.dart';
import 'package:appdoctor/bloc/doctor_receipt/doctor_receipt_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:appdoctor/models/medicine/medicine_receipt.dart';
import 'package:appdoctor/models/receipt/new_receipt.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:appdoctor/models/users/patient_preview.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/screens/welcome_doctor_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:appdoctor/styles/widget_styles.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class CreateReceipt extends StatefulWidget {
  const CreateReceipt({super.key});

  static const routeName = '/create-receipt';

  @override
  State<CreateReceipt> createState() => _CreateReceiptState();
}

class _CreateReceiptState extends State<CreateReceipt> {
  final _formKey = GlobalKey<FormState>();

  late Future<List<PatientPreview>> patientsAsync;
  late Future<List<MedicinePreview>> medicinesAsync;

  String? patientId;
  List<MedicineReceipt> selectedMedicines = [];

  @override
  void didChangeDependencies() {
    patientsAsync = UserApi.getPatients();
    medicinesAsync = MedicineApi.getMedicines();
    super.didChangeDependencies();
  }

  void _tryAdd(String doctorId) {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if (isValid != null && isValid) {
      _formKey.currentState?.save();
      NewReceipt newReceipt = NewReceipt(
        date: DateTime.now(),
        patientId: patientId!,
        doctorId: doctorId,
        medicines: selectedMedicines,
      );
      BlocProvider.of<DoctorReceiptBloc>(context).add(
        DoctorReceiptEvent.addNewReceipt(newReceipt),
      );
      Navigator.of(context).pushReplacementNamed(WelcomeDoctorScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<DoctorBloc, DoctorState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (message) {
              return Center(
                child: Text(message),
              );
            },
            loaded: (doctor) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const TopImageWidget(
                      imagePath: "assets/images/receipt2.png",
                      blendMode: BlendMode.color,
                    ),
                    const Text(
                      "Új recept felírása",
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
                              future: patientsAsync,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return DropdownFormField<
                                      Map<String, dynamic>>(
                                    onEmptyActionPressed: () async {},
                                    decoration: WidgetStyle
                                        .textFormFieldInputDecoration(
                                      "Név",
                                      Icons.person,
                                    ),
                                    onSaved: (dynamic str) {
                                      if (str != null) {
                                        patientId = str['id'] as String;
                                      }
                                    },
                                    onChanged: (dynamic str) {},
                                    displayItemFn: (dynamic item) =>
                                        item != null
                                            ? item['namePrefix'] != ""
                                                ? Text(
                                                    "${item['namePrefix'] ?? ''} ${item['lastName'] ?? ''} ${item['firstName'] ?? ''}",
                                                    style: const TextStyle(
                                                        fontSize: 16),
                                                  )
                                                : Text(
                                                    "${item['lastName'] ?? ''} ${item['firstName'] ?? ''}",
                                                    style: const TextStyle(
                                                        fontSize: 16),
                                                  )
                                            : const Text(""),
                                    findFn: (dynamic str) async => snapshot
                                        .data!
                                        .map((e) => e.toJson())
                                        .toList(),
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
                                        0,
                                    dropdownItemFn: (dynamic item,
                                            int position,
                                            bool focused,
                                            bool selected,
                                            Function() onTap) =>
                                        ListTile(
                                      title: item['namePrefix'] != ""
                                          ? Text(
                                              "${item['namePrefix']} ${item['lastName']} ${item['firstName']}")
                                          : Text(
                                              "${item['lastName']} ${item['firstName']}"),
                                      subtitle: Text(
                                        DateFormat('yyyy-MM-dd')
                                            .format(DateTime.parse(
                                                item['birthDate']))
                                            .toString(),
                                      ),
                                      tileColor: focused
                                          ? const Color.fromARGB(20, 0, 0, 0)
                                          : Colors.transparent,
                                      onTap: onTap,
                                    ),
                                  );
                                } else {
                                  return const Text("Nincs páciens");
                                }
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FutureBuilder(
                              future: medicinesAsync,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return MultiSelectBottomSheetField(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppDoctorStyles.cardColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    initialChildSize: 0.4,
                                    listType: MultiSelectListType.CHIP,
                                    searchable: true,
                                    selectedItemsTextStyle: const TextStyle(
                                      color: AppDoctorStyles.cardColor,
                                    ),
                                    buttonText: const Text(
                                      "Milyen gyógyszereket kell felírni?",
                                      style: TextStyle(
                                        color: AppDoctorStyles.cardColor,
                                      ),
                                    ),
                                    title: const Text("Gyógyszerek"),
                                    items: snapshot.data!
                                        .map((e) => MultiSelectItem(e, e.name))
                                        .toList(),
                                    onConfirm: (values) {
                                      setState(() {
                                        selectedMedicines = values
                                            .map((e) => MedicineReceipt(
                                                id: (e as MedicinePreview).id,
                                                name: (e).name,
                                                quantity: 0))
                                            .toList();
                                      });
                                    },
                                    chipDisplay: MultiSelectChipDisplay(
                                      chipColor: AppDoctorStyles.cardColor,
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      onTap: (value) {
                                        setState(() {
                                          selectedMedicines
                                              .remove(value as MedicineReceipt);
                                        });
                                      },
                                    ),
                                  );
                                } else {
                                  return const Text("Nincs gyógyszer.");
                                }
                              },
                            ),
                            ...selectedMedicines.map((e) {
                              return Column(
                                children: [
                                  TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "A gyógyszer mennyiségét kitölteni kötelező!";
                                      }
                                      return null;
                                    },
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                    decoration: WidgetStyle
                                        .textFormFieldInputDecoration(
                                      "${e.name} felírt mennyisége",
                                      Icons.storage,
                                    ),
                                    onSaved: (value) {
                                      selectedMedicines.removeWhere(
                                          (element) => element.id == e.id);
                                      selectedMedicines.add(
                                        MedicineReceipt(
                                            id: e.id,
                                            name: e.name,
                                            quantity: int.parse(value!)),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              );
                            }).toList(),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Aláírás",
                                style: TextStyle(
                                  color: AppDoctorStyles.cardColor,
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 50,
                                    vertical: 10.0),
                                child: Text(
                                  "${doctor.namePrefix} ${doctor.lastName} ${doctor.firstName}",
                                  style: const TextStyle(
                                    color: AppDoctorStyles.cardColor,
                                    fontSize: 50,
                                    height: 1.2,
                                    fontFamily: "Amertha",
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: WidgetStyle.buttonStyle,
                                onPressed: () => _tryAdd(doctor.id),
                                clipBehavior: Clip.hardEdge,
                                child: const Text('Recept felírása'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
