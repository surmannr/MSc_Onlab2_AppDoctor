import 'package:appdoctor/bloc/disease/disease_bloc.dart';
import 'package:appdoctor/bloc/doctor/doctor_bloc.dart';
import 'package:appdoctor/bloc/doctor_examination_reservation/doctor_examination_reservation_bloc.dart';
import 'package:appdoctor/bloc/doctor_receipt/doctor_receipt_bloc.dart';
import 'package:appdoctor/bloc/doctor_referral/doctor_referral_bloc.dart';
import 'package:appdoctor/bloc/doctors/doctors_bloc.dart';
import 'package:appdoctor/bloc/medicine/medicine_bloc.dart';
import 'package:appdoctor/bloc/patient/patient_bloc.dart';
import 'package:appdoctor/bloc/patient_receipt/patient_receipt_bloc.dart';
import 'package:appdoctor/bloc/patient_referral/patient_referral_bloc.dart';
import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/screens/examination_reservation/create_examination_reservation.dart';
import 'package:appdoctor/screens/examination_reservation/examination_reservation_list.dart';
import 'package:appdoctor/screens/medicine/add-medicine.dart';
import 'package:appdoctor/screens/medicine/medicine_list.dart';
import 'package:appdoctor/screens/receipt/create_receipt.dart';
import 'package:appdoctor/screens/receipt/patient_receipt_list.dart';
import 'package:appdoctor/screens/referral/create_referral.dart';
import 'package:appdoctor/screens/referral/patient_referral_list.dart';
import 'package:appdoctor/screens/users/doctors_list.dart';
import 'package:appdoctor/screens/welcome_doctor_screen.dart';
import 'package:appdoctor/screens/welcome_patient_screen.dart';
import 'package:appdoctor/styles/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DoctorBloc>(
          lazy: false,
          create: (BuildContext context) => DoctorBloc(),
        ),
        BlocProvider<PatientBloc>(
          lazy: false,
          create: (BuildContext context) => PatientBloc(),
        ),
        BlocProvider<MedicineBloc>(
          lazy: false,
          create: (BuildContext context) => MedicineBloc(null),
        ),
        BlocProvider<DiseaseBloc>(
          lazy: false,
          create: (BuildContext context) => DiseaseBloc(null),
        ),
        BlocProvider<DoctorReceiptBloc>(
          lazy: false,
          create: (BuildContext context) => DoctorReceiptBloc(null),
        ),
        BlocProvider<DoctorReferralBloc>(
          lazy: false,
          create: (BuildContext context) => DoctorReferralBloc(null),
        ),
        BlocProvider<DoctorExaminationReservationBloc>(
          lazy: false,
          create: (BuildContext context) =>
              DoctorExaminationReservationBloc(null),
        ),
        BlocProvider<DoctorsBloc>(
          lazy: false,
          create: (BuildContext context) => DoctorsBloc(),
        ),
        BlocProvider<PatientReceiptBloc>(
          lazy: false,
          create: (BuildContext context) => PatientReceiptBloc(null),
        ),
        BlocProvider<PatientReferralBloc>(
          lazy: false,
          create: (BuildContext context) => PatientReferralBloc(null),
        ),
      ],
      child: MaterialApp(
        title: 'AppDoctor',
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child!),
        theme: ThemeData(
          primaryColor: AppDoctorStyles.primaryColor,
          backgroundColor: AppDoctorStyles.backgroundColor,
          secondaryHeaderColor: AppDoctorStyles.secondaryColor,
          cardColor: AppDoctorStyles.cardColor,
          canvasColor: AppDoctorStyles.canvasColor,
          appBarTheme: const AppBarTheme(
            color: AppDoctorStyles.cardColor,
            elevation: 1,
          ),
          fontFamily: 'Coolvetica',
          buttonTheme: const ButtonThemeData(
            buttonColor: AppDoctorStyles.cardColor,
          ),
          textTheme: const TextTheme()
              .apply(displayColor: AppDoctorStyles.primaryColor),
        ),
        home: const AuthScreen(
          isRegistration: false,
        ),
        routes: {
          WelcomeDoctorScreen.routeName: (context) =>
              const WelcomeDoctorScreen(),
          WelcomePatientScreen.routeName: (context) =>
              const WelcomePatientScreen(),
          ExaminationReservationList.routeName: (context) =>
              const ExaminationReservationList(),
          MedicineList.routeName: (context) => const MedicineList(),
          CreateReceipt.routeName: (context) => const CreateReceipt(),
          CreateReferral.routeName: (context) => const CreateReferral(),
          AddMedicine.routeName: (context) => const AddMedicine(),
          CreateExaminationReservation.routeName: (context) =>
              const CreateExaminationReservation(),
          PatientReceiptList.routeName: (context) => const PatientReceiptList(),
          PatientReferralList.routeName: (context) =>
              const PatientReferralList(),
          DoctorsListScreen.routeName: (context) => const DoctorsListScreen(),
        },
      ),
    );
  }
}
