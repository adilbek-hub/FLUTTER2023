import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';
import '../../constants/sizes.dart';
import '../../views/paid_page.dart';
import '../controllers.dart';
import '../custom_button.dart';

class CustomButtonContainer extends StatelessWidget {
  const CustomButtonContainer({
    super.key,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  final int tourPrice;
  final int fuelCharge;
  final int serviceCharge;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sizes.height19,
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Paid(),
                  )),
              child: CustomButton(
                text:
                    ' ${AppTexts.oplatit} ${tourPrice + fuelCharge + serviceCharge}',
                onTap: () {
                  if (controllers.formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Paid();
                      }),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
