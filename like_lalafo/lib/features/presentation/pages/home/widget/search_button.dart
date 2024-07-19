import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 35,
      decoration: BoxDecoration(
        color: ColorConstants.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.search,
            color: ColorConstants.grey,
          ),
          SizedBox(width: 15),
          AppText(
            title: 'Я ищу...',
            textType: TextType.subtitle,
            color: ColorConstants.grey,
          ),
        ],
      ),
    );
  }
}
