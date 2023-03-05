import 'package:flutter/material.dart';
import 'package:heal_o_sage/pages/food_categories_screen.dart';
import 'package:heal_o_sage/screens/diet_Screen.dart';

class NonVegPage extends StatelessWidget {
  
  final List<String> foodItems = [    'Egg',    'Chicken breast', ];

  NonVegPage({super.key});


  @override
  Widget build(BuildContext context) {
    return const DietScreen();
  }
}
  


