import 'package:flutter/material.dart';
import 'package:hack_day_front/controllers/login_controller.dart';
import 'package:hack_day_front/models/error_model.dart';
import 'package:hack_day_front/models/login_model.dart';
import 'package:hack_day_front/screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController _controller = LoginController();

    final GlobalKey<FormState> _key = GlobalKey<FormState>();

    final TextEditingController _user = TextEditingController();
    final TextEditingController _password = TextEditingController();

    return Form(
      key: _key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _user,
                    decoration: const InputDecoration(
                      labelText: 'usuário',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        value == null ? 'campo obrigatório' : null,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                      labelText: 'senha',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        value == null ? 'campo obrigatório' : null,
                    obscureText: true,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      _controller.user = _user.text;
                      _controller.password = _password.text;
                      dynamic result = await _controller.login();
                      if (result is ErrorModel) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Atenção'),
                              content: Text(result.error),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        LoginModel model = result as LoginModel;
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen(
                                      token: model.token,
                                    )));
                      }
                    },
                    child: const Text('Entrar'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
