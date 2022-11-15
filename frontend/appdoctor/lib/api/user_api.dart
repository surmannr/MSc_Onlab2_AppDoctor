import 'dart:convert';

import 'package:appdoctor/api/constants.dart';
import 'package:appdoctor/models/users/doctor.dart';
import 'package:appdoctor/models/users/patient.dart';
import 'package:appdoctor/models/users/patient_preview.dart';
import 'package:http/http.dart' as http;

class UserApi {
  static Future<String?> login(String userName, String password) async {
    Uri loginUri = Uri.parse("${Constants.userAddress.toString()}login");
    final response = await http.post(
      loginUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        <String, String>{
          'userName': userName,
          'password': password,
        },
      ),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<Doctor?> getDoctorById(String id) async {
    Uri getDoctorUri =
        Uri.parse("${Constants.userAddress.toString()}doctor/$id");
    final response = await http.get(
      getDoctorUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return Doctor.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  static Future<List<PatientPreview>> getPatients() async {
    Uri getPatientsUri =
        Uri.parse("${Constants.userAddress.toString()}patients");
    final response = await http.get(
      getPatientsUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      var list = (jsonDecode(response.body)) as List;
      var patients = List<PatientPreview>.from(
          list.map<PatientPreview>((dynamic i) => PatientPreview.fromJson(i)));
      return patients;
    } else {
      return [];
    }
  }
}
