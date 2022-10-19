import 'dart:convert';

import 'package:appdoctor/api/constants.dart';
import 'package:appdoctor/models/users/doctor.dart';
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
}
