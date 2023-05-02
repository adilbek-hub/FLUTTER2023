import 'dart:ui';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism(
      {super.key,
      required this.blur,
      required this.opasity,
      required this.child});
  final double blur;
  final double opasity;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(opasity),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
              )),
          child: child,
        ),
      ),
    );
  }
}
