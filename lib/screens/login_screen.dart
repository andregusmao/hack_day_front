import 'package:flutter/material.dart';
import 'package:hack_day_front/controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController _controller = LoginController();

    final GlobalKey<FormState> key = GlobalKey<FormState>();

    final TextEditingController user = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Form(
      key: key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: user,
              decoration: const InputDecoration(labelText: 'usuário'),
              validator: (value) => value == null ? 'campo obrigatório' : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: password,
              decoration: const InputDecoration(labelText: 'senha'),
              validator: (value) => value == null ? 'campo obrigatório' : null,
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }
}
