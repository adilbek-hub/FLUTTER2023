import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:piano_app_new/example3/components/demo_black_key.dart';
import 'package:piano_app_new/example3/components/demo_white_key.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  bool isPressed = false;

  List<String> notes = [
    'do1.mp3',
    'fa4.mp3',
    'lya6.mp3',
    'mi3.mp3',
    're2.mp3',
    'si7.mp3',
    'sol5.mp3'
  ];
  void playSound(int noteIndex) {
    AudioPlayer().play(AssetSource(notes[noteIndex]));
  }

  List<bool> _notePressed = List.generate(7, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: 350,
          child: Stack(
            children: [
              ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  // Ак кнопка үчүн
                  return GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        isPressed = true;
                        _notePressed[index] = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        _notePressed[index] = false;
                      });
                    },
                    onTap: () {
                      playSound(index);
                    },
                    child: Transform(
                      transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
                      child: White_piano(isPressed: isPressed),
                    ),
                  );
                },
              ),
              // Кара кнопка үчүн

              Row(
                children: const [
                  SizedBox(
                    width: 50,
                  ),
                  DemoBlackKey(),
                  SizedBox(
                    width: 20,
                  ),
                  DemoBlackKey(),
                  SizedBox(
                    width: 10 * 18,
                  ),
                  DemoBlackKey(),
                  SizedBox(
                    width: 20,
                  ),
                  DemoBlackKey(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class White_piano extends StatelessWidget {
  const White_piano({
    super.key,
    required this.isPressed,
  });

  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
        color: isPressed ? Colors.grey[300] : Colors.white,
        border: Border.all(color: Colors.black, width: 1),
      ),
    );
  }
}
