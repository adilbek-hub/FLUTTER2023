import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: ColorConstants.grey.withOpacity(0.2),
      child: const Center(
        child: Text('ADVERST'),
      ),
    );
  }
}
