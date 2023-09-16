import 'package:flutter/cupertino.dart';
import 'package:hotel_app/constants/app_colors.dart';
import 'package:hotel_app/constants/app_text_styles.dart';
import '../../constants/app_texts.dart';

class AboutNumberContainer extends StatelessWidget {
  const AboutNumberContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
        color: const Color(0xffACDBFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
            child: Text(
              AppTexts.aboutNumbers,
              style: AppTextStyles.tStyle5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.blue2,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
