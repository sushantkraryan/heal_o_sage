import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  FoodItems({super.key});
  final List<String> dietList = [
    'Oatmeal with berries',
    'Greek yogurt with granola',
    'Egg and avocado toast',
    'Grilled chicken with vegetables',
    'Salmon with quinoa and asparagus',
    'Oatmeal with berries',
    'Greek yogurt with granola',
    'Egg and avocado toast',
    'Grilled chicken with vegetables',
    'Salmon with quinoa and asparagus',
    'Oatmeal with berries',
    'Greek yogurt with granola',
    'Egg and avocado toast',
    'Grilled chicken with vegetables',
    'Salmon with quinoa and asparagus',
    'Oatmeal with berries',
    'Greek yogurt with granola',
    'Egg and avocado toast',
    'Grilled chicken with vegetables',
    'Salmon with quinoa and asparagus',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: dietList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.cyan,
              child: ListTile(
                title: Text(dietList[index]),
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
              ),
            );
          },
        ),
      );
  }
}
