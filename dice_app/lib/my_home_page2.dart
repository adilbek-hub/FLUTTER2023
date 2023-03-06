import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int dice1 = 1;
  int dice2 = 2;
  void change() {
    setState(() {
      dice1 = Random().nextInt(7);
      dice2 = Random().nextInt(7);
    });
  }

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
              DiceImage2(
                index: dice1 == 0 ? 1 : dice1,
                onTap: change,
              ),
              const SizedBox(
                width: 25,
              ),
              DiceImage2(
                index: dice2 == 0 ? 1 : dice2,
                onTap: change,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DiceImage2 extends StatelessWidget {
  DiceImage2({super.key, this.onTap, required this.index});
  final void Function()? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
            InkWell(onTap: onTap, child: Image.asset("assets/dice$index.png")));
  }
}
