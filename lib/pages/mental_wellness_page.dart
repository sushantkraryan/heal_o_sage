// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'listen_music_page.dart';
import 'meditation_page.dart';

class MentalWellnessPage extends StatefulWidget {
  const MentalWellnessPage({super.key});

  @override
  _MentalWellnessPage createState() => _MentalWellnessPage();
}

class _MentalWellnessPage extends State<MentalWellnessPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
     MeditationPage(),
     ListenMusicPage(),
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
        title: const Text('Mental Wellness'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology,),
            label: 'Meditation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headphones),
            label: 'Listen Music',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}