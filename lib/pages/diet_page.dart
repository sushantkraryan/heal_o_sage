import 'package:flutter/material.dart';

class VegNonvegPage extends StatefulWidget {
  @override
  _VegNonvegPageState createState() => _VegNonvegPageState();
}

class _VegNonvegPageState extends State<VegNonvegPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Meal Type'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Select your meal type:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ChoiceChip(
                  label: Text('Vegetarian'),
                  selected: _selectedIndex == 0,
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                ChoiceChip(
                  label: Text('Non-vegetarian'),
                  selected: _selectedIndex == 1,
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () {
                // Handle navigation based on the selected meal type
                if (_selectedIndex == 0) {
                  Navigator.pushNamed(context, '/vegetarian_meals');
                } else {
                  Navigator.pushNamed(context, '/non_vegetarian_meals');
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
