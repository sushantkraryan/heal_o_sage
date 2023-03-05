// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'bmi_calculator_page.dart';
import 'exercise_page.dart';
import 'progress_page.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ExercisePage(),
    ProgressPage(),
    BMICalculator(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercise',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'BMICalculator',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
