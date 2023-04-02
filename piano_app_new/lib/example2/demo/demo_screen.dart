import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:piano_app_new/example2/contains/classFor.dart';

final List<String> notes = [
  "do1.mp3",
  "fa4.mp3",
  "lya6.mp3",
  "mi3.mp3",
  "re2.mp3",
  "si7.mp3",
  "sol5.mp3",
];

class PianoApp2 extends StatefulWidget {
  PianoApp2({super.key});

  final AudioCache audioCache = AudioCache();

  @override
  State<PianoApp2> createState() => _PianoApp2State();
}

class _PianoApp2State extends State<PianoApp2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: ListView.builder(
            itemCount: notes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext contex, index) {
              return GestureDetector(
                onTap: () {
                  AudioPlayer().play(AssetSource(notes[index]));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 80,
                  color: Colors.green,
                  child: Text('go'),
                ),
              );
            }),
      ),
    );
  }
}

//Кара кнопканын баскычы

// Ак Кнопканын баскычы
/*
class DemoWhiteKey extends StatefulWidget {
  const DemoWhiteKey({super.key});

  @override
  State<DemoWhiteKey> createState() => _DemoWhiteKeyState();
}

class _DemoWhiteKeyState extends State<DemoWhiteKey> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      onTap: () {
        playNoteAudio(context, note.asset);
        //  AudioPlayer().play(AssetSource('$nota.mp3'));
        // final player = AudioPlayer();
        // player.play(AssetSource(''));
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              color: isPressed ? Colors.grey[300] : Colors.white),
          width: 80,
          height: double.infinity,
        ),
      ),
    );
  }
}
*/
