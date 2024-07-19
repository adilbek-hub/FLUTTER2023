import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class FeaturedNewChooseButton extends StatefulWidget {
  const FeaturedNewChooseButton({super.key});

  @override
  State<FeaturedNewChooseButton> createState() =>
      _FeaturedNewChooseButtonState();
}

class _FeaturedNewChooseButtonState extends State<FeaturedNewChooseButton> {
  bool _isRecommendedSelected = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 38,
        decoration: BoxDecoration(
          color: ColorConstants.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 3),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isRecommendedSelected = true;
                  });
                },
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: _isRecommendedSelected
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: const AppText(
                    title: 'Рекомендованные',
                    textType: TextType.subtitle,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isRecommendedSelected = false;
                  });
                },
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: !_isRecommendedSelected
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: const AppText(
                    title: 'Новые',
                    textType: TextType.subtitle,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 3),
          ],
        ),
      ),
    );
  }
}
