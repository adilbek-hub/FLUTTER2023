import 'package:flutter/material.dart';

import '../contains/sizes.dart';

class PianoApp2 extends StatefulWidget {
  const PianoApp2({super.key});

  @override
  State<PianoApp2> createState() => _PianoApp2State();
}

class _PianoApp2State extends State<PianoApp2> {
  //анткени 7 ак баскычтын үстүнө 5 кара баскыч коюлган
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: w,
        height: h,
        child: Stack(
          children: [
            ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext contex, index) {
                  return const DemoWhiteKey();
                }),
            Row(
              children: const [
                SizedBox(
                  width: 50,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 16,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 175,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 16,
                ),
                DemoBlackKey(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Кара кнопканын баскычы
class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({super.key});

  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

class _DemoBlackKeyState extends State<DemoBlackKey> {
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
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
            color: isPressed ? Colors.grey[300] : Colors.black,
            width: 63,
            height: 200,
            child: Stack(
              children: [
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    left: 10,
                    height: isPressed ? 10 * 15 : 10 * 20,
                    child: const CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white60,
                    ))
              ],
            )),
      ),
    );
  }
}

// Ак Кнопканын баскычы
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
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              color: isPressed ? Colors.grey[300] : Colors.white),
          width: whiteKeyWidth,
          height: whiteKeyHeight,
        ),
      ),
    );
  }
}
