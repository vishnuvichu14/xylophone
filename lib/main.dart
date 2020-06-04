import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
  Xylophone(),
);

class Xylophone extends StatelessWidget {

  Expanded Buildkey({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundnumber.wav');
        },
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
              Buildkey(color: Colors.blue, soundnumber: 1),
              Buildkey(color: Colors.teal, soundnumber: 2),
              Buildkey(color: Colors.red, soundnumber: 3),
              Buildkey(color: Colors.yellow, soundnumber: 4),
              Buildkey(color: Colors.orange, soundnumber: 5),
              Buildkey(color: Colors.green, soundnumber: 6),
              Buildkey(color: Colors.black, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
