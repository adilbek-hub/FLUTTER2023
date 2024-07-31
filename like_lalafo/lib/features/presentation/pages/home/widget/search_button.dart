import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    this.width = 280,
    this.height = 35,
    this.title = 'Я ищу...',
    super.key,
  });
  final double? width;
  final double? height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ColorConstants.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Icon(
            Icons.search,
            color: ColorConstants.grey,
          ),
          const SizedBox(width: 15),
          AppText(
            title: title,
            textType: TextType.subtitle,
            color: ColorConstants.grey,
          ),
        ],
      ),
    );
  }
}
