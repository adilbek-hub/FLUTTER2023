import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final Text text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: text,
    );
  }
}
