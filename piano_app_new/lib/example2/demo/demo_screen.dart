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
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Stack(
          children: [
            ListView.builder(
                itemCount: notes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext contex, index) {
                  return GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        isPressed = true;
                      });
                      final notalar = notes[index];
                      AudioPlayer().play(
                        AssetSource(
                          notalar,
                        ),
                      );
                    },
                    onTapUp: (details) {
                      setState(() {
                        isPressed = false;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 6),
                      height: 80,
                      width: 70,
                      color: Colors.white,
                      // child: const Text('go'),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
