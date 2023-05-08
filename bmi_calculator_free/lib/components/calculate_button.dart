import 'package:bmi_calculator_free/components/resultt.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_free/theme/app_colors.dart';
import 'package:bmi_calculator_free/theme/app_text_style.dart';
import 'package:bmi_calculator_free/theme/app_texts.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        minimumSize: const Size(double.infinity, 73),
      ),
      onPressed: onPressed,
      child: const Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
