import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.token}) : super(key: key);

  final String token;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.token);
    return ListView.builder(
      itemCount: 0,
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
