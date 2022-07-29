class UserLoginModel {
  String user;
  String password;

  UserLoginModel({
    required this.user,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'user': user,
        'password': password,
      };
}
