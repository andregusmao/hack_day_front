import 'dart:convert';

import 'package:hack_day_front/models/error_model.dart';
import 'package:http/http.dart' as http;

import 'package:hack_day_front/models/login_model.dart';
import 'package:hack_day_front/models/user_login_model.dart';

class LoginService {
  Future<dynamic> login(UserLoginModel model) async {
    final response = await http.post(
      Uri.parse('http://localhost:4000/api/login'),
      body: model.toJson(),
    );

    switch (response.statusCode) {
      case 200:
        LoginModel loginModel = LoginModel.fromJson(
          jsonDecode(response.body),
        );

        return loginModel;
      default:
        ErrorModel errorModel = ErrorModel.fromJson(
          jsonDecode(response.body),
        );
        return errorModel;
    }
  }
}
