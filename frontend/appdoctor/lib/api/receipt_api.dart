import 'dart:convert';

import 'package:appdoctor/models/receipt/new_receipt.dart';
import 'package:appdoctor/models/receipt/receipt.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class ReceiptApi {
  static Future<List<Receipt>> getRecipes(String doctorId) async {
    Uri getDoctorUri =
        Uri.parse("${Constants.receiptAddress.toString()}doctor/$doctorId");
    final response = await http.get(
      getDoctorUri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Receipt>((json) {
        return Receipt.fromJson(json);
      }).toList();
    } else {
      return [];
    }
  }

  static Future<bool?> addNewReceipt(
    NewReceipt receipt,
  ) async {
    Uri uri = Uri.parse("${Constants.receiptAddress.toString()}new");
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(receipt.toJson()),
    );
    if (response.statusCode == 200) {
      return response.body == "true";
    } else {
      return null;
    }
  }
}
