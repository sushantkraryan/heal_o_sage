import 'package:flutter/material.dart';

class CardioExercisePage extends StatelessWidget {
  static const routeName = '/cardio_exercise_page';

  const CardioExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardio Exercises'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildExerciseCard(
              'Running',
              'Burn calories and improve your endurance',
              Icons.directions_run,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Cycling',
              'A low-impact way to get your heart pumping',
              Icons.directions_bike,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Jumping Jacks',
              'A simple exercise to get your blood flowing',
              Icons.star,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Burpees',
              'A full-body exercise that can be done anywhere',
              Icons.fitness_center,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Jump Rope',
              'An effective way to improve coordination and burn calories',
              Icons.accessibility_new,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Stair Climbing',
              'A challenging cardio workout that targets your legs and glutes',
              Icons.arrow_upward,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseCard(
      String exerciseName, String exerciseDescription, IconData iconData) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.pink,
          size: 50,
        ),
        title: Text(
          exerciseName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          exerciseDescription,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.pink,
        ),
        onTap: () {
          // TODO: Navigate to the exercise details page
        },
      ),
    );
  }
}
