// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'non_veg_page.dart';
import 'veg_page.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
     VegPage(),
     NonVegPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Icon(Icons.radio_button_checked,
        color: Colors.green,
      ),
            label: 'Veg',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_unchecked,
        color: Colors.red,
      ),
            label: 'NonVeg',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
