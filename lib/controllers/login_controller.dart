import 'package:hack_day_front/models/user_login_model.dart';
import 'package:hack_day_front/services/login_service.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final LoginService _service = LoginService();

  @observable
  String user = '';
  @observable
  String password = '';
  @observable
  String error = '';

  @action
  Future<dynamic> login() async {
    return _service.login(UserLoginModel(user: user, password: password));
  }
}
