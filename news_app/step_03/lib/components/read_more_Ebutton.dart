import 'package:flutter/material.dart';
import 'package:step_03/theme/colors.dart';

class ReadMoreButton extends StatelessWidget {
  const ReadMoreButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.primary),
        child: const Text('Read More'));
  }
}
