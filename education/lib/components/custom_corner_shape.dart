import 'package:flutter/material.dart';

class CustomCornerShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color.fromARGB(255, 163, 209, 246);
    Path path = Path()
      ..moveTo(0, size.height) // start at bottom left corner
      ..lineTo(size.width - 20,
          size.height) // draw line to bottom right (minus the corner width)
      ..lineTo(size.width,
          size.height - 20) // draw line to top right (minus the corner height)
      ..lineTo(size.width, 0) // draw line to top left
      ..lineTo(0, 0) // draw line to bottom left
      ..lineTo(
          0,
          size.height -
              20) // draw line to bottom left (minus the corner height)
      ..close(); // close the path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
