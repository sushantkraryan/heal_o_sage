import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  double _progressValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Progress: ${(_progressValue * 100).toStringAsFixed(1)}%'),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: _progressValue,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _progressValue += 0.1;
                  if (_progressValue >= 1.0) {
                    _progressValue = 1.0;
                  }
                });
              },
              child: Text('Increase Progress'),
            ),
          ],
        ),
      ),
    );
  }
}

