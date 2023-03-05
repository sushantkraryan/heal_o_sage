import 'package:flutter/material.dart';

class FoodCategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(10),
        children: [
          const CategoryItem(
            title: 'Breakfast',
            color: Colors.orange,
            imageUrl:
                'https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2019/04/vegan-breakfast-bowl.jpg',
          ),
          const CategoryItem(
            title: 'Lunch',
            color: Colors.purple,
            imageUrl:
                'https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2019/04/vegan-breakfast-bowl.jpg',
          ),
          CategoryItem(
            title: 'Dinner',
            color: Colors.red,
            imageUrl:
                'https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2019/04/vegan-breakfast-bowl.jpg',
          ),
          CategoryItem(
            title: 'Snacks',
            color: Colors.green,
            imageUrl:
                'https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2019/04/vegan-breakfast-bowl.jpg',
          ),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String imageUrl;

  const CategoryItem({required this.title, required this.color, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/foodItems',
          arguments: {'title': title},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 40,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

