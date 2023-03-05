import 'package:flutter/material.dart';

import 'pages/home_page.dart';

import 'pages/diet_page.dart';
import 'pages/first_page.dart';
import 'pages/login_page.dart';
import 'pages/mental_wellness_page.dart';
import 'pages/signup_page.dart';
import 'pages/workout_page.dart';


void main() {
  runApp(const HealoSage());
}

class HealoSage extends StatelessWidget {
  const HealoSage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealoSage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan),
      ),
      home: const FirstPage(),
      routes: {
        '/workout_page': (context) => const WorkoutPage(),
        '/diet_page': (context) => const DietPage(),
        '/mental_wellness_page': (context) => const MentalWellnessPage(),
        '/login_page': (context) => const LoginPage(),
        '/signup_page': (context) => SignUpPage(),
        '/home_page' :(context) => const HomePage(),
      },
    );
  }
}
