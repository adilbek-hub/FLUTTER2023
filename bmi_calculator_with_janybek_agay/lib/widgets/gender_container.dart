import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    Key? key,
    required this.icons,
    required this.texts,
  }) : super(key: key);
  final IconData icons;
  final String texts;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff0b0120),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              icons,
              size: 75,
              color: Colors.white.withOpacity(0.9),
            ),
            Text(
              texts,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
