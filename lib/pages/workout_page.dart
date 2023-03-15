// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'bmi_calculator_page.dart';
import 'exercise_page.dart';

class WorkoutPage extends StatefulWidget {
  static const routeName = '/workout_page';
  const WorkoutPage({super.key});

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ExercisePage(),
    BMICalculator(),
  ];

  static const List<String> _tabTitles = <String>[
    'Exercise',
    'BMICalcaulator',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.red],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_tabTitles[_selectedIndex]),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Exercise',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'BMICalculator',
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
