import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/router/router.dart';
import 'package:like_lalafo/theme/color_constants.dart';

class SeeAllCategoriesTextButton extends StatelessWidget {
  const SeeAllCategoriesTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppText(
            title: 'Категории',
            textType: TextType.subtitle,
            color: ColorConstants.black,
            fontWeight: FontWeight.w700,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pushRoute(const CategoryRoute());
                },
                child: const AppText(
                  title: 'Смотреть все',
                  textType: TextType.promocode,
                  color: ColorConstants.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.arrow_forward_ios_sharp, size: 10)
            ],
          ),
        ],
      ),
    );
  }
}
