import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Expanded(
                  child: FlatButton(
                      color: Colors.red,
                      onPressed: (){
                        playsound(1);
                },
               ),
              ),
                  Expanded(
                  child: FlatButton(
                      color: Colors.orange,
                      onPressed: (){
                        playsound(2);
                },
              ),
                  ),
                  Expanded(
                      child: FlatButton(
                      color: Colors.yellow,
                      onPressed: (){
                        playsound(3);
                },
              ),),
                  Expanded(
                      child: FlatButton(
                      color: Colors.green,
                      onPressed: (){
                        playsound(4);
                },
              ),),
                  Expanded(
                      child: FlatButton(
                      color: Colors.teal,
                      onPressed: (){
                        playsound(5);
                },
              ),),
                  Expanded(
                      child: FlatButton(
                      color: Colors.blue,
                      onPressed: (){
                        playsound(6);
                },
              ),),
                  Expanded(
                      child: FlatButton(
                      color: Colors.purple,
                      onPressed: (){
                        playsound(7);
                },
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
