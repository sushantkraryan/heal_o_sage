import 'package:flutter/material.dart';


class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: [
          ExerciseItem(
            title: 'Strength Training',
            color: Colors.red,
          ),
          ExerciseItem(
            title: 'Cardio',
            color: Colors.blue,
          ),
          ExerciseItem(
            title: 'Yoga',
            color: Colors.green,
          ),
          ExerciseItem(
            title: 'Pilates',
            color: Colors.orange,
          ),
          ExerciseItem(
            title: 'Stretching',
            color: Colors.purple,
          ),
          ExerciseItem(
            title: 'Sports',
            color: Colors.teal,
          ),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

class ExerciseItem extends StatelessWidget {
  final String title;
  final Color color;

  ExerciseItem({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
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

