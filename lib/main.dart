
import 'package:bmi_calculator_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bmi Calculator App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

