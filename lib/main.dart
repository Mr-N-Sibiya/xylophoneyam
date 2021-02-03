import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded playKey({Color color,int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor:Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                playKey(color:Colors.red,soundNumber:1),
              playKey(color: Colors.purple,soundNumber: 2),
            playKey(color:Colors.blueAccent,soundNumber: 3),
          playKey(color: Colors.orange,soundNumber: 4),
        playKey(color: Colors.green,soundNumber: 5),
    playKey(color: Colors.yellowAccent,soundNumber: 6),
    playKey(color: Colors.teal,soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
