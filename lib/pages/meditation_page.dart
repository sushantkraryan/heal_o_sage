import 'package:flutter/material.dart';

class MeditationPage extends StatelessWidget {
  static const routeName = '/meditation_page';

  const MeditationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Breathing exercise',
            'Take a deep breath in through your nose for 4 seconds, hold for 7 seconds, and exhale through your mouth for 8 seconds. Repeat for 1-2 minutes.',
            Icons.air_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Mindfulness exercise',
            'Sit quietly and focus on your breath. Notice each inhale and exhale without judgement or distraction. Try to do this for 5-10 minutes.',
            Icons.self_improvement_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Gratitude exercise',
            'Write down three things you are grateful for today. They can be small things like a delicious meal or a friendly conversation.',
            Icons.favorite_border_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Visualization exercise',
            'Close your eyes and imagine a peaceful scene, such as a beach or a forest. Visualize yourself in that scene and feel the calmness and relaxation it brings.',
            Icons.image_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Stretching exercise',
            'Take a few minutes to stretch your body. Focus on your breath and feel the tension release as you stretch your muscles.',
            Icons.accessibility_new_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Body scan meditation',
            'Lie down or sit comfortably and focus on your body from your toes to your head. Notice any sensations, tension or discomfort. Breathe into the areas of tension and imagine them relaxing.',
            Icons.spa_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Laugh out loud',
            'Watch a funny movie, read a joke or hang out with a friend who makes you laugh. Laughter triggers the release of endorphins, which can improve mood and decrease stress.',
            Icons.sentiment_very_satisfied_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Mindful walking',
            'Go for a walk and focus on your senses - what you see, hear, smell, and feel. Notice the ground under your feet and the movement of your body. If your mind wanders, bring it back to your senses.',
            Icons.directions_walk_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Positive affirmations',
            'Repeat positive statements to yourself such as "I am strong and capable" or "I am worthy of love and respect". This can help build self-esteem and reduce negative self-talk.',
            Icons.chat_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Laughter exercise',
            'Watch a funny video or read a joke. Laughing triggers the release of endorphins, which can improve mood and decrease stress.',
            Icons.emoji_emotions_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Loving-kindness meditation',
            'Sit quietly and repeat positive phrases to yourself such as "May I be happy, may I be healthy, may I be peaceful". Then extend these wishes to others, starting with someone close to you and gradually including all living beings.',
            Icons.favorite_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Body awareness exercise',
            'Take a few minutes to focus on each part of your body, starting from your toes and working your way up to your head. Notice any sensations or tension and try to relax those areas.',
            Icons.healing_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Nature meditation',
            'Find a peaceful spot outdoors and focus on the sights, sounds, and sensations of nature. Notice the colors of the leaves, the sound of birds, and the feeling of the sun on your skin.',
            Icons.nature_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Affirmation jar',
            'Write positive affirmations on slips of paper and put them in a jar. Whenever you need a boost of positivity, pick a slip of paper and read the affirmation.',
            Icons.edit_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Breathing visualization',
            'Close your eyes and imagine a ball of light expanding and contracting as you inhale and exhale. Focus on the rhythm of your breath and the sensation of the light.',
            Icons.bubble_chart_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Walking meditation',
            'Go for a walk and focus on your breath and the movement of your body. Notice each step and the feeling of your feet on the ground. If your mind wanders, bring it back to your breath and body.',
            Icons.directions_run_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Body gratitude',
            'Take a moment to thank each part of your body for its function and support. Start from your toes and work your way up to your head, expressing gratitude for each body part along the way.',
            Icons.favorite_border_outlined,
          ),
          SizedBox(height: 16.0),
          _buildExerciseCard(
            context,
            'Self-compassion meditation',
            'Sit quietly and imagine sending love and compassion to yourself. Repeat phrases such as "May I be kind to myself, may I give myself the love I need". Allow yourself to feel the warmth and kindness of these words.',
            Icons.healing_outlined,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget _buildExerciseCard(
      BuildContext context, String title, String description, IconData icon) {
    return InkWell(
      onTap: () {
// TODO: Implement exercise selection logic
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                color: Colors.pink,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}