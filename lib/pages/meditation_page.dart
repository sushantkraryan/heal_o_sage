import 'package:flutter/material.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Meditation',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: <Widget>[
                  MeditationCard(
                    title: 'Breathing Meditation',
                    imageUrl:
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fisha.sadhguru.org%2Fyoga%2Fmeditations%2Fscience-of-meditation%2F&psig=AOvVaw0J_JpswP7RL3cVrerBN3Vx&ust=1678104828063000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCODlrOThxP0CFQAAAAAdAAAAABAD',
                    duration: '10 min',
                    onTap: () {
                      //TODO: Navigate to breathing meditation screen
                    },
                  ),
                  SizedBox(height: 16),
                  MeditationCard(
                    title: 'Mindfulness Meditation',
                    imageUrl:
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fisha.sadhguru.org%2Fyoga%2Fmeditations%2Fscience-of-meditation%2F&psig=AOvVaw0J_JpswP7RL3cVrerBN3Vx&ust=1678104828063000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCODlrOThxP0CFQAAAAAdAAAAABAD',
                    duration: '15 min',
                    onTap: () {
                      //TODO: Navigate to mindfulness meditation screen
                    },
                  ),
                  SizedBox(height: 16),
                  MeditationCard(
                    title: 'Loving-Kindness Meditation',
                    imageUrl:
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fisha.sadhguru.org%2Fyoga%2Fmeditations%2Fscience-of-meditation%2F&psig=AOvVaw0J_JpswP7RL3cVrerBN3Vx&ust=1678104828063000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCODlrOThxP0CFQAAAAAdAAAAABAD',
                    duration: '20 min',
                    onTap: () {
                      //TODO: Navigate to loving-kindness meditation screen
                    },
                  ),
                  SizedBox(height: 16),
                  MeditationCard(
                    title: 'Body Scan Meditation',
                    imageUrl:
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fisha.sadhguru.org%2Fyoga%2Fmeditations%2Fscience-of-meditation%2F&psig=AOvVaw0J_JpswP7RL3cVrerBN3Vx&ust=1678104828063000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCODlrOThxP0CFQAAAAAdAAAAABAD',
                    duration: '30 min',
                    onTap: () {
                      //TODO: Navigate to body scan meditation screen
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MeditationCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String duration;
  final Function onTap;

  const MeditationCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              duration,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
