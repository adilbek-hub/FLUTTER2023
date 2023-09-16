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
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BookingPage(),
          )),
      child: const CustomButton(text: AppTexts.chooseNumber),
    );
  }
}
