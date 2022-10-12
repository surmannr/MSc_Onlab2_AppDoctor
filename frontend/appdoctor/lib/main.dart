import 'package:appdoctor/bloc/doctor/doctor_bloc.dart';
import 'package:appdoctor/screens/auth/auth_screen.dart';
import 'package:appdoctor/screens/welcome_screen.dart';
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
          WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        },
      ),
    );
  }
}
