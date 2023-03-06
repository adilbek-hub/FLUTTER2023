import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int dice1 = 1;
  int dice2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Center(
          child: Text(
            "Тапшырма 5",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              DiceImage(dice1),
              const SizedBox(
                width: 25,
              ),
              DiceImage(dice2),
            ],
          ),
        ),
      ),
    );
  }
}

class DiceImage extends StatefulWidget {
  DiceImage(
    this.index, {
    Key? key,
  }) : super(key: key);
  int index;

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: () {
              setState(() {
                widget.index = Random().nextInt(7);
              });
            },
            child: Image.asset(
                "assets/dice${widget.index == 0 ? 1 : widget.index}.png")));
  }
}
