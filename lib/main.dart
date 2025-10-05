import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dashboard/dashboard.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

// The 'Root' widget of the application
class MyApp extends StatelessWidget {
  // Parent constructor must be called
  const MyApp({super.key});

  // Override the build method to describe how to display the widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      // Using a custom theme defined in app_theme.dart
      theme: AppTheme.lightTheme,
    );
  }
}
