import 'package:flutter/material.dart';
import 'package:hotel_app/constants/app_images.dart';
import '../components/custom_button.dart';
import '../constants/app_texts.dart';
import '../constants/sizes.dart';

class Paid extends StatelessWidget {
  const Paid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            AppTexts.zakazOplachen,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
            vertical: 28,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Column(
                  children: [
                    Container(
                      width: 94,
                      height: 94,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF6F6F9),
                      ),
                      child: AppImages.flawerImage,
                    ),
                    Sizes.height32,
                    const Text(
                      AppTexts.zakazToWork,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Sizes.height20,
                    const Text(
                      AppTexts.longTexts,
                      style: TextStyle(
                        color: Color(0xff828796),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: AppTexts.superText,
                onTap: () => Navigator.pushNamed(context, '/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
