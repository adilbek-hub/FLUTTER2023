import 'package:flutter/material.dart';

import '../../constants/app_texts.dart';
import '../../views/booking_page.dart';
import '../custom_button.dart';

class AboutCustomNavigator extends StatelessWidget {
  const AboutCustomNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'BookingPage'),
      child: const CustomButton(text: AppTexts.chooseNumber),
    );
  }
}
