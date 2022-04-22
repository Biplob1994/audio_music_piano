import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int audioNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$audioNumber.wav');
  }

  Widget audioDisplay(Color color, int audioNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(audioNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              audioDisplay(Colors.red, 1),
              audioDisplay(Colors.blue, 2),
              audioDisplay(Colors.green, 3),
              audioDisplay(Colors.teal, 4),
              audioDisplay(Colors.orange, 5),
              audioDisplay(Colors.pink, 6),
              audioDisplay(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
