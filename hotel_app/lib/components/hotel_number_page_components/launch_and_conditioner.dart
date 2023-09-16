import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class LaunchAndConditioner extends StatelessWidget {
  const LaunchAndConditioner({
    Key? key,
    required this.peculiarities0,
    required this.peculiarities1,
  }) : super(key: key);
  final String peculiarities0;
  final String peculiarities1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Sizes.width15,
        Text(
          peculiarities0,
          style: const TextStyle(
            color: Color(0xff828796),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Sizes.width28,
        Text(
          peculiarities1,
          style: const TextStyle(
            color: Color(0xff828796),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
