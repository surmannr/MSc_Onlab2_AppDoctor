import 'package:appdoctor/bloc/doctor/doctor_bloc.dart';
import 'package:appdoctor/menu/appdoc_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const routeName = '/welcome';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDocAppBar(),
      body: BlocBuilder<DoctorBloc, DoctorState>(
        builder: (context, state) {
          BlocProvider.of<DoctorBloc>(context)
              .add(const DoctorEvent.getLoggedInDoctor());
          return state.when(
            initial: () {
              print("init");
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: () {
              print("loading");
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (doctor) {
              print("doctor");
              return Center(
                child: Text(doctor.firstName),
              );
            },
            error: (message) {
              return Center(
                child: Text(message),
              );
            },
          );
        },
      ),
    );
  }
}
