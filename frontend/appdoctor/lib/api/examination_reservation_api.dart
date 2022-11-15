import 'dart:convert';

import 'package:appdoctor/api/constants.dart';
import 'package:appdoctor/models/examinationReservation/examination_reservation.dart';

import 'package:http/http.dart' as http;

class ExaminationReservationApi {
  static Future<List<ExaminationReservation>>
      getExaminationReservationByDoctorId(String doctorId) async {
    Uri getDoctorUri = Uri.parse(
        "${Constants.examinationReservationAddress.toString()}doctor/$doctorId");
    final response = await http.get(
      getDoctorUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<ExaminationReservation>((json) {
        return ExaminationReservation.fromJson(json);
      }).toList();
    } else {
      return [];
    }
  }
}
