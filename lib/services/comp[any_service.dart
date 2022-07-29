import 'dart:convert';

import 'package:hack_day_front/models/error_model.dart';
import 'package:http/http.dart' as http;

class CompanyService {
  Future<dynamic> get(String token) async {
    final response = await http.get(
      Uri.parse('http://localhost:4000/api/companies'),
      headers: {
        'Authorization': 'bearer $token',
      },
    );

    switch (response.statusCode) {
      case 200:
      default:
        ErrorModel errorModel = ErrorModel.fromJson(
          jsonDecode(response.body),
        );
        return errorModel;
    }
  }
}
