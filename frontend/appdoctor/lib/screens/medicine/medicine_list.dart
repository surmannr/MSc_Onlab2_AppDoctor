import 'package:appdoctor/bloc/medicine/medicine_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/screens/medicine/add-medicine.dart';
import 'package:appdoctor/screens/medicine/widgets/medicine_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MedicineList extends StatefulWidget {
  const MedicineList({super.key});

  static const routeName = '/medicines';

  @override
  State<MedicineList> createState() => _MedicineListState();
}

class _MedicineListState extends State<MedicineList> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MedicineBloc>(context).add(
      const MedicineEvent.getMedicinePreviews(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<MedicineBloc, MedicineState>(builder: (context, state) {
        return state.when(loadingMedicinePreviews: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, loadedMedicinePreviews: ((medicines) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "Gyógyszerek:",
                    style: TextStyle(
                      color: AppDoctorStyles.cardColor,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: medicines.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MedicineTile(
                          medicine: medicines[index],
                        );
                      }),
                ],
              ),
            ),
          );
        }), errorMedicinePreview: ((message) {
          return Center(
            child: Text(message),
          );
        }));
      }),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add-medicine',
        onPressed: () {
          Navigator.of(context).pushNamed(AddMedicine.routeName);
        },
        splashColor: Colors.amber,
        backgroundColor: AppDoctorStyles.secondaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
