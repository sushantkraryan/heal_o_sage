import 'package:flutter/material.dart';

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
          children: [
            ElevatedButton(
              child: const Text('Start Workout'),
              onPressed: () {
                Navigator.pushNamed(context, '/workout_page');
              },
            ),
            ElevatedButton(
              child: const Text('View Diet Plan'),
              onPressed: () {
                Navigator.pushNamed(context, '/diet_page');
              },
            ),
            ElevatedButton(
              child: const Text('Mental Wellness'),
              onPressed: () {
                Navigator.pushNamed(context, '/mental_wellness_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}