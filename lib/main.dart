import 'package:animations_flutter/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations - Flutter',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
