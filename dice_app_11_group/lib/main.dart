import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int sol = 1;
  int on = 1;
  void change() {
    setState(() {
      sol = Random().nextInt(6) + 1;
      on = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Center(child: Text("Dice App")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (sol == 4)
              Text(
                "$sol",
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            if (on == 6)
              Text(
                "$on",
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            Center(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child: Image.asset("assets/dice$sol.png")),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child: Image.asset("assets/dice$on.png")),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
