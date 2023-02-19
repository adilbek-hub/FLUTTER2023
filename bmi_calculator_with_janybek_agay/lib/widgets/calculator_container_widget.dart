import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('basyldy');
      },
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(color: Colors.pink),
        child: Text(
          'calculate'.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
