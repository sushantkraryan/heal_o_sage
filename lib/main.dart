import 'package:flutter/material.dart';
import 'package:heal_o_sage/models/food_items.dart';
import 'pages/home_page.dart';

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
      home: const HomePage(),
    );
  }
}
