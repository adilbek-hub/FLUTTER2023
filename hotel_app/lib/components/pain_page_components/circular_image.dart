import 'package:flutter/material.dart';

import '../../constants/app_images.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 94,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffF6F6F9),
      ),
      child: AppImages.flawerImage,
    );
  }
}
