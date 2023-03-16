import 'package:flutter/material.dart';

class StrengthTrainingExercisePage extends StatelessWidget {
    static const routeName = '/strength_traning_page';

  const StrengthTrainingExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strength Training Exercises'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildExerciseCard(
              'Bench Press',
              'Improve your upper body strength',
              Icons.fitness_center,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Squats',
              'Build strong legs and glutes',
              Icons.directions_run,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Deadlift',
              'Develop overall body strength',
              Icons.accessibility_new,
            ),
            SizedBox(height: 20),
            _buildExerciseCard(
              'Shoulder Press',
              'Strengthen your shoulder muscles',
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
