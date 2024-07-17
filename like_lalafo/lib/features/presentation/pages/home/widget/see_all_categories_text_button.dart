import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class SeeAllCategoriesTextButton extends StatelessWidget {
  const SeeAllCategoriesTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            title: 'Категории',
            textType: TextType.subtitle,
            color: ColorConstants.black,
            fontWeight: FontWeight.w700,
          ),
          Row(
            children: [
              AppText(
                title: 'Смотреть все',
                textType: TextType.promocode,
                color: ColorConstants.grey,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: 5),
              Icon(Icons.arrow_forward_ios_sharp, size: 10)
            ],
          ),
        ],
      ),
    );
  }
}
