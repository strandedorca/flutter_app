import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

void main() {
  runApp(MyApp());
}

final ThemeData theme = ThemeData(
  primaryColor: const Color(0xffffca42),
  scaffoldBackgroundColor: const Color(0xffffffff),
  fontFamily: 'Poppins',
);

// The 'Root' widget of the application
class MyApp extends StatelessWidget {
  // Parent constructor must be called
  const MyApp({super.key});

  // Override the build method to describe how to display the widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(), theme: ThemeData());
  }
}
