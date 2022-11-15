import 'package:appdoctor/bloc/doctors/doctors_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:appdoctor/screens/users/doctor_tile.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorsListScreen extends StatefulWidget {
  const DoctorsListScreen({super.key});

  static const routeName = '/doctors-list';

  @override
  State<DoctorsListScreen> createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
  @override
  void didChangeDependencies() {
    SharedPreferences.getInstance().then((value) {
      setState(() {
        var doctorId = value.getString("patientId");
        BlocProvider.of<DoctorsBloc>(context).add(
          const DoctorsEvent.load(),
        );
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<DoctorsBloc, DoctorsState>(
        builder: (context, state) {
          return state.when(loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: ((doctors) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text(
                      "Doktorok:",
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
                        itemCount: doctors.length,
                        itemBuilder: (BuildContext context, int index) {
                          return DoctorTile(
                            doctor: doctors[index],
                          );
                        }),
                  ],
                ),
              ),
            );
          }), error: ((message) {
            return Center(
              child: Text(message),
            );
          }));
        },
      ),
    );
  }
}
