import 'package:flutter/material.dart';
import 'package:hack_day_front/screens/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hack Day Users',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hack Day Users'),
        ),
        body: const LoginScreen(),
      ),
      // initialRoute: '/login',
      // routes: routes(),
    ),
  );
}
