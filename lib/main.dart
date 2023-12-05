import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundnumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(Audio("assets/note$soundnumber.wav"));
  }

  Widget builtKey(int sound, Color color) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: color,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero))),
          onPressed: () {
            playSound(sound);
          },
          child: const Text("")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtKey(1, Colors.red),
              builtKey(2, Colors.orange),
              builtKey(3, Colors.yellow),
              builtKey(4, Colors.green),
              builtKey(5, Colors.teal),
              builtKey(6, Colors.blue),
              builtKey(7, Colors.purple),
            ],
          )),
    );
  }
}
