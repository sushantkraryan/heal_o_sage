import 'package:flutter/material.dart';




class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double _height = 170;
  double _weight = 60;
  double _bmi = 0;

  void _calculateBmi() {
    setState(() {
      _bmi = _weight / ((_height / 100) * (_height / 100));
    });
  }

  String _getBmiMessage() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi < 25) {
      return 'Normal';
    } else if (_bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String _getBmiDescription() {
    if (_bmi < 18.5) {
      return 'You are underweight. Eat more and exercise regularly.';
    } else if (_bmi < 25) {
      return 'You are in a healthy weight range. Keep up the good work!';
    } else if (_bmi < 30) {
      return 'You are overweight. Consider exercising more and watching your diet.';
    } else {
      return 'You are obese. Please consult a doctor for advice on how to lose weight.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height',
              style: TextStyle(fontSize: 24),
            ),
            Slider(
              value: _height,
              min: 100,
              max: 250,
              onChanged: (value) {
                setState(() {
                  _height = value.roundToDouble();
                });
              },
            ),
            Text(
              '$_height cm',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            Text(
              'Weight',
              style: TextStyle(fontSize: 24),
            ),
            Slider(
              value: _weight,
              min: 40,
              max: 200,
              onChanged: (value) {
                setState(() {
                  _weight = value.roundToDouble();
                });
              },
            ),
            Text(
              '$_weight kg',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _calculateBmi,
              child: Text(
                'Calculate BMI',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            Text(
              _bmi > 0 ? 'BMI: ${_bmi.toStringAsFixed(1)}' : '',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            Text(
              _bmi > 0 ? _getBmiMessage() : '',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              _bmi > 0 ? _getBmiDescription() : '',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}