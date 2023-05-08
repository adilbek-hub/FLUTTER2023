import 'package:flutter/material.dart';

import 'package:bmi_calculator_free/theme/app_colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.icon,
    required this.basuu,
    required this.heroTag,
  }) : super(key: key);
  final IconData icon;
  final void Function() basuu;
  final Object heroTag;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FloatingActionButton(
        heroTag: heroTag,
        backgroundColor: AppColors.greyColor,
        onPressed: basuu,
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
