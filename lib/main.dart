import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(' '), //code won't work without this child
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playKey(color: Colors.red, soundNumber: 1),
              playKey(color: Colors.orange, soundNumber: 2),
              playKey(color: Colors.yellow, soundNumber: 3),
              playKey(color: Colors.green, soundNumber: 4),
              playKey(color: Colors.teal, soundNumber: 5),
              playKey(color: Colors.blue, soundNumber: 6),
              playKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
