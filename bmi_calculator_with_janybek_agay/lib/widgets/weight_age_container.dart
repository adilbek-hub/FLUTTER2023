import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  const WeightAgeContainer({
    Key? key,
    required this.texts,
    required this.ints,
    required this.iconMinus,
    required this.iconPlus,
  }) : super(key: key);
  final String texts;
  final String ints;
  final IconData iconMinus;
  final IconData iconPlus;

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
            Text(
              texts,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ints,
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  iconMinus,
                  size: 40,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  iconPlus,
                  size: 40,
                  color: Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
