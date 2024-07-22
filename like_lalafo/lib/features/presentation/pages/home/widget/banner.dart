import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 90,
      color: ColorConstants.grey.withOpacity(0.2),
      child: Image.asset(
        AssetConstants.advert.jpg,
        fit: BoxFit.fill,
      ),
    );
  }
}
