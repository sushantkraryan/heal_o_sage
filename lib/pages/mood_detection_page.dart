import 'package:flutter/material.dart';

class MoodDetectionPage extends StatefulWidget {
  const MoodDetectionPage({super.key});

  @override
  _MoodDetectionPageState createState() => _MoodDetectionPageState();
}

class _MoodDetectionPageState extends State<MoodDetectionPage> {
  int _score = 0;

  List<Question> _questions = [
    Question(
      'How was your sleep last night?',
      [
        Option('Terrible', -2),
        Option('Not great', -1),
        Option('Okay', 0),
        Option('Great', 2),
      ],
    ),
    Question(
      'How much stress have you been under lately?',
      [
        Option('A lot', -2),
        Option('Some', -1),
        Option('Not much', 0),
        Option('None', 2),
      ],
    ),
    Question(
      'Have you exercised recently?',
      [
        Option('No', -1),
        Option('A little', 0),
        Option('Moderately', 1),
        Option('A lot', 2),
      ],
    ),
  ];

  Map<int, Recommendation> _recommendations = {
    -6: Recommendation('Terrible', 'You may need some extra support today.'),
    -5: Recommendation('Bad', 'Take some time for self-care today.'),
    -4: Recommendation(
        'Not great', 'Try to focus on the positive things in your life.'),
    -3: Recommendation('Okay', 'Find some time to relax and de-stress today.'),
    -2: Recommendation('Okay', 'Take some deep breaths and try to relax.'),
    -1: Recommendation('Okay', 'Stay positive and focus on the good things.'),
    0: Recommendation('Good', 'Keep up the good work!'),
    1: Recommendation('Good', 'Keep up your healthy habits.'),
    2: Recommendation('Great', 'You are doing great!'),
    3: Recommendation('Great', 'You are on fire!'),
    4: Recommendation('Amazing', 'You are unstoppable!'),
    5: Recommendation('Amazing', 'You are a superhero!'),
    6: Recommendation('Amazing', 'You are a legend!'),
  };

  int _currentQuestionIndex = 0;
  List<Option> _selectedOptions = [];

  void _answerQuestion(Option option) {
    setState(() {
      _score += option.score;
      _selectedOptions.add(option);
      _currentQuestionIndex++;
    });
    if (_currentQuestionIndex >= _questions.length) {
      _showRecommendation();
    }
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
      _selectedOptions = [];
    });
  }

  void _showRecommendation() {
    Recommendation recommendation = _recommendations[_score]!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('You are feeling ${recommendation.mood}!'),
          content: Text(recommendation.message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _resetQuiz();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pink, Colors.purple],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mood Detection',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _currentQuestionIndex < _questions.length
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            _questions[_currentQuestionIndex].text,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: _questions[_currentQuestionIndex]
                                .options
                                .map((option) => ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.purple,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                      ),
                                      child: Text(
                                        option.text,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      onPressed: () => _answerQuestion(option),
                                    ))
                                .toList(),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Text(
                            'You are feeling ${_recommendations[_score]!.mood}!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            _recommendations[_score]!.message,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.purple,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                            ),
                            child: Text(
                              'Start Over',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: _resetQuiz,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  final String text;
  final List<Option> options;

  Question(this.text, this.options);
}

class Option {
  final String text;
  final int score;

  Option(this.text, this.score);
}

class Recommendation {
  final String mood;
  final String message;

  Recommendation(this.mood, this.message);
}
