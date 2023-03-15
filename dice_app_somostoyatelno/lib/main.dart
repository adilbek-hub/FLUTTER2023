import 'dart:math';

import 'package:dice_app_somostoyatelno/constants/app_text_styles.dart';
import 'package:dice_app_somostoyatelno/constants/text_colors.dart';
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
  int firstDice = 3;
  int secondDice = 3;
  void change() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(color: TextColors.appBarTextColor),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "dice app",
                  style: AppTextStyles.diceAppStyle,
                ),
                Text(
                  "dice app",
                  style: AppTextStyles.diceAppStyle2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              firstDice = Random().nextInt(6) + 1;
                            });
                          },
                          child:
                              Image.asset("assets/images/dice$firstDice.png"))),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              secondDice = Random().nextInt(6) + 1;
                              firstDice = Random().nextInt(6) + 1;
                            });
                          },
                          child: Image.asset(
                              "assets/images/dice$secondDice.png"))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
