import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  double _bmi = 0;

  void _calculateBMI() {
    setState(() {
      double height = double.tryParse(_heightController.text) ?? 0;
      double weight = double.tryParse(_weightController.text) ?? 0;
      _bmi = weight / ((height / 100) * (height / 100));
    });
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Calculate Your BMI',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _heightController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                hintText: 'Enter your height in centimeters',
              ),
            ),
            TextFormField(
              controller: _weightController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                hintText: 'Enter your weight in kilograms',
              ),
            ),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Your BMI: ${_bmi.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}