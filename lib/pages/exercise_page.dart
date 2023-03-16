import 'package:flutter/material.dart';
import 'cardio_exercise_page.dart';
import 'strength_traning_exercise_page.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              ExerciseItem(
                title: 'Strength Training',
                color: Colors.red,
                icon: Icons.fitness_center,
                onTap: () {
                  Navigator.pushNamed(
                      context, StrengthTrainingExercisePage.routeName);
                },
              ),
              ExerciseItem(
                title: 'Cardio',
                color: Colors.blue,
                icon: Icons.directions_run,
                onTap: () {
                  Navigator.pushNamed(context, CardioExercisePage.routeName);
                },
              ),
              ExerciseItem(
                title: 'Yoga',
                color: Colors.green,
                icon: Icons.self_improvement,
                onTap: () {
                },
              ),
              ExerciseItem(
                title: 'Pilates',
                color: Colors.orange,
                icon: Icons.sports_kabaddi,
                onTap: () {
                  // TODO: Navigate to pilates exercise page
                },
              ),
              ExerciseItem(
                title: 'Stretching',
                color: Colors.purple,
                icon: Icons.accessibility_new,
                onTap: () {
                  // TODO: Navigate to stretching exercise page
                },
              ),
              ExerciseItem(
                title: 'Sports',
                color: Colors.teal,
                icon: Icons.sports_baseball,
                onTap: () {
                  // TODO: Navigate to sports exercise page
                },
              ),
              ExerciseItem(
                title: 'Swimming',
                color: Colors.indigo,
                icon: Icons.pool,
                onTap: () {
                  // TODO: Navigate to swimming exercise page
                },
              ),
              ExerciseItem(
                title: 'Cycling',
                color: Colors.amber,
                icon: Icons.pedal_bike,
                onTap: () {
                  // TODO: Navigate to cycling exercise page
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExerciseItem extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  const ExerciseItem({
    required this.title,
    required this.color,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 50,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
