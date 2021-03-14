import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int data) {
    final player = AudioCache();
    player.play('note$data.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Click to play Note'),
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
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
              Expanded(
                child: FlatButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('O Jaan Waale - Akhil Sachdeva.mp3');
                    //player.loadAll(['explosion.mp3', 'music.mp3']);
                  },
                  child: Text('O Jaan Waale - Akhil Sachdeva.mp3'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}