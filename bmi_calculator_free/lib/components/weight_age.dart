import 'package:flutter/material.dart';
import 'package:bmi_calculator_free/components/circular_button.dart';
import 'package:bmi_calculator_free/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addBasuu,
    required this.removeBasuu,
    required this.heroTag1,
    required this.heroTag2,
  });

  final String text;
  final String san;
  final void Function() addBasuu;
  final void Function() removeBasuu;
  final Object heroTag1;
  final Object heroTag2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titleStyle,
        ),
        Text(
          san,
          style: AppTextStyles.sanTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: Icons.remove,
              basuu: removeBasuu,
              heroTag: heroTag1,
            ),
            const SizedBox(width: 10),
            CircularButton(
              icon: Icons.add,
              basuu: addBasuu,
              heroTag: heroTag2,
            ),
          ],
        ),
      ],
    );
  }
}
