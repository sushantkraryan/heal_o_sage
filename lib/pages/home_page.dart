import 'package:flutter/material.dart';

import 'diet_page.dart';
import 'mental_wellness_page.dart';
import 'workout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HealoSage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WorkoutPage()),
                );
              },
              child: const Text('Start Workout'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DietPage()),
                );
              },
              child: const Text('View Diet Plan'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MentalWellnessPage()),
                );
              },
              child: const Text('Mental Wellness'),
            ),
          ],
        ),
      ),
    );
  }
}