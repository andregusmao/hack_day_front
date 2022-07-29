class LoginModel {
  int userId;
  String token;

  LoginModel({
    required this.userId,
    required this.token,
  });

  LoginModel.fromJson(Map<String, dynamic> json)
      : userId = json['user_id'],
        token = json['token'];
}
