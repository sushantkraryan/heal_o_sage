import 'package:flutter/material.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({super.key});

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  bool isPlaying = false;
  IconData playButton = Icons.play_arrow;

  void onPressed() {
    setState(() {
      isPlaying = !isPlaying;
      playButton = isPlaying ? Icons.pause : Icons.play_arrow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/album_cover.jpg'),
              ),
            ),
            Text(
              'Song Title',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Artist Name',
              style: TextStyle(fontSize: 18),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous),
                    iconSize: 48,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(playButton),
                    iconSize: 64,
                    onPressed: onPressed,
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next),
                    iconSize: 48,
                    onPressed: () {},
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
