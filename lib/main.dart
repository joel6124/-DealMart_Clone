import 'package:flutter/material.dart';
import 'package:grocery_app/colours.dart';
import 'package:grocery_app/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColours.primaryColor,
        hintColor: AppColours.accentColor,
      ),
      home: LoginPage(),
    );
  }
}
