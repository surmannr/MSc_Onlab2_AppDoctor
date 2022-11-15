import 'dart:convert';

import 'package:appdoctor/models/referral/new_referral.dart';
import 'package:appdoctor/models/referral/referral.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class ReferralApi {
  static Future<List<Referral>> getReferralsByDoctorId(String doctorId) async {
    Uri getDoctorUri =
        Uri.parse("${Constants.referralAddress.toString()}doctor/$doctorId");
    final response = await http.get(
      getDoctorUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Referral>((json) {
        return Referral.fromJson(json);
      }).toList();
    } else {
      return [];
    }
  }

  static Future<bool?> addNewReferral(
    NewReferral referral,
  ) async {
    Uri uri = Uri.parse("${Constants.referralAddress.toString()}new");
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(referral.toJson()),
    );
    if (response.statusCode == 200) {
      return response.body == "true";
    } else {
      return null;
    }
  }
}
