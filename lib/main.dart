


import 'package:flutter/material.dart';
import 'package:heal_o_sage/pages/non_veg_page.dart';
import 'package:heal_o_sage/pages/veg_page.dart';
import 'package:heal_o_sage/screens/diet_Screen.dart';

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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      ),
      home: const FirstPage(),
      routes: {
        '/workout_page': (context) => const WorkoutPage(),
        '/diet_page': (context) => VegNonvegPage(),
        '/mental_wellness_page': (context) => const MentalWellnessPage(),
        '/login_page': (context) => const LoginPage(),
        '/signup_page': (context) => SignUpPage(),
        '/home_page' :(context) => const HomePage(),
        '/vegetarian_meals':(context) => const VegPage(),
        '/non_vegetarian_meals':(context) => NonVegPage(),
        '/diet_screen' :(context) => const DietScreen(),
      },
    );
  }
}
