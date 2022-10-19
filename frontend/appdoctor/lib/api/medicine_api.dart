import 'dart:convert';

import 'package:appdoctor/models/medicine/medicine_preview.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class MedicineApi {
  static Future<List<MedicinePreview>?> getMedicines() async {
    Uri getDoctorUri = Uri.parse(Constants.medicineAddress.toString());
    final response = await http.get(
      getDoctorUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<MedicinePreview>((json) {
        return MedicinePreview.fromJson(json);
      }).toList();
    } else {
      return null;
    }
  }

  static Future<List<String>?> getDiseases() async {
    Uri getDoctorUri =
        Uri.parse("${Constants.medicineAddress.toString()}diseases");
    final response = await http.get(
      getDoctorUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final parsed =
          (jsonDecode(response.body) as List<dynamic>).cast<String>();

      return parsed;
    } else {
      return null;
    }
  }

  static Future<bool?> addNewMedicine(
    String name,
    List<String> diseases,
    int inStock,
  ) async {
    Uri uri = Uri.parse("${Constants.medicineAddress.toString()}new");
    final data = jsonEncode(
      <String, dynamic>{
        'name': name,
        'inStock': inStock,
        'diseasesGoodFor': diseases,
      },
    );
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        <String, dynamic>{
          'name': name,
          'inStock': inStock,
          'diseasesGoodFor': diseases,
        },
      ),
    );
    if (response.statusCode == 200) {
      return response.body == "true";
    } else {
      return null;
    }
  }
}
