import 'package:flutter/material.dart';
import '';
import '../contains/sizes.dart';

List<double> blackKeyPositions = [1, 2, 3, 5, 6];

class PianoApp2 extends StatefulWidget {
  const PianoApp2({super.key});

  @override
  State<PianoApp2> createState() => _PianoApp2State();
}

class _PianoApp2State extends State<PianoApp2> {
  //анткени 7 ак баскычтын үстүнө 5 кара баскыч коюлган
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext contex, index) {
                return DemoWhiteKey();
              }),
          //Кара кнопка
          ...List.generate(blackKeyPositions.length, (index) {
            return DemoBlackKeyWidget(index);
          })
        ],
      ),
    );
  }
}
//Кара кнопканын баскычы

class DemoBlackKeyWidget extends StatefulWidget {
  const DemoBlackKeyWidget(this.index, {super.key});
  final int index;

  @override
  State<DemoBlackKeyWidget> createState() => _DemoBlackKeyWidgetState();
}

class _DemoBlackKeyWidgetState extends State<DemoBlackKeyWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: blackKeyPositions[widget.index] * 50,
        child: Container(
          width: 50,
          height: 200,
          decoration: BoxDecoration(color: Colors.black),
        ));
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
          width: 80,
          height: whiteKeyHeight,
        ),
      ),
    );
  }
}
