import 'package:appdoctor/bloc/disease/disease_bloc.dart';
import 'package:appdoctor/bloc/medicine/medicine_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/menu/appdoc_drawer.dart';
import 'package:appdoctor/screens/_common_widgets/top_image_widget.dart';
import 'package:appdoctor/screens/medicine/medicine_list.dart';
import 'package:appdoctor/styles/widget_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../styles/colors.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({super.key});

  static const routeName = '/add-medicine';

  @override
  State<AddMedicine> createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<DiseaseBloc>(context).add(
      const DiseaseEvent.getDiseases(),
    );
  }

  late String name = "";
  late List<String> diseasesGoodFor = [];
  late int inStock = 0;

  void _tryAdd() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if (isValid != null && isValid) {
      _formKey.currentState?.save();
      BlocProvider.of<MedicineBloc>(context).add(
        MedicineEvent.addNewMedicine(name, inStock, diseasesGoodFor, context),
      );
      Navigator.of(context).pushReplacementNamed(MedicineList.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "add-medicine",
      child: Scaffold(
        appBar: AppDocAppBar(),
        drawer: AppDocDrawer(),
        body: BlocBuilder<DiseaseBloc, DiseaseState>(
          builder: (context, state) {
            return state.when(loadingDiseases: (() {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }), loadedDiseases: ((diseases) {
              return SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const TopImageWidget(
                        imagePath: 'assets/images/medicine.png',
                        blendMode: BlendMode.color,
                      ),
                      const Text(
                        "Új gyógyszer hozzáadása",
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
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "A gyógyszer nevét kitölteni kötelező!";
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.text,
                                decoration:
                                    WidgetStyle.textFormFieldInputDecoration(
                                  "Név",
                                  Icons.medication,
                                ),
                                onSaved: (value) {
                                  name = value!;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "A gyógyszer nevét kitölteni kötelező!";
                                  }
                                  return null;
                                },
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.number,
                                decoration:
                                    WidgetStyle.textFormFieldInputDecoration(
                                  "Raktáron lévő mennyiség",
                                  Icons.storage,
                                ),
                                onSaved: (value) {
                                  inStock = int.parse(value!);
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              MultiSelectBottomSheetField(
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
                                  "Milyen betegség ellen jó?",
                                  style: TextStyle(
                                    color: AppDoctorStyles.cardColor,
                                  ),
                                ),
                                title: const Text("Betegségek"),
                                items: diseases
                                    .map((e) => MultiSelectItem(e, e))
                                    .toList(),
                                onConfirm: (values) {
                                  diseasesGoodFor = values.cast<String>();
                                },
                                chipDisplay: MultiSelectChipDisplay(
                                  chipColor: AppDoctorStyles.cardColor,
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  onTap: (value) {
                                    setState(() {
                                      diseasesGoodFor.remove(value as String);
                                    });
                                  },
                                ),
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
                                  child: const Text('Hozzáadás'),
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
            }), errorDiseases: ((message) {
              return Center(
                child: Text(message),
              );
            }));
          },
        ),
      ),
    );
  }
}
