import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayer/audioplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer audioPlugin = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: TextButton(
                onPressed: () {
                  //final player = AudioCache();
                  audioPlugin.play('note1.wav');
                },
                child: Text('Click Me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
