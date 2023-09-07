import 'package:flutter/material.dart';

class Neumorphism extends StatefulWidget {
  const Neumorphism({super.key});

  @override
  State<Neumorphism> createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Color(0xffe7ecef);
    Offset distance = const Offset(28, 28);
    double blur = 30.0;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: blur,
                  offset: distance,
                  color: const Color(0xffa7a9af),
                ),
              ]),
          child: const SizedBox(
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
