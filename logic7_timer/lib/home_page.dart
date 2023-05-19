import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  // Бул өзгөрмөтү колдонуш үчүн түзүп алдым
  int timeLeft = 5;
// Таймер үчүн функция
  void startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Timer',
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? 'DONE' : timeLeft.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: startCountDown,
              child: const Text(
                'START',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
