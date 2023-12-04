import 'package:bmi_calculator/features/presentation/components/height_card.dart';
import 'package:bmi_calculator/features/presentation/components/male_female_card.dart';
import 'package:bmi_calculator/features/presentation/components/colculator_container.dart';
import 'package:bmi_calculator/features/presentation/components/weight_age_card.dart';
import 'package:bmi_calculator/features/presentation/pages/constants/app_colors.dart';
import 'package:bmi_calculator/features/presentation/pages/constants/app_sized_box.dart';
import 'package:bmi_calculator/features/presentation/pages/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFamily = false;
  int slider = 180;
  int weight = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgc,
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
          vertical: 39,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isFamily = true;
                    });
                  },
                  child: MaleFemaleCard(
                    icon: Icons.male,
                    text: 'MALE',
                    isFemale: isFamily,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isFamily = false;
                    });
                  },
                  child: MaleFemaleCard(
                    icon: Icons.female,
                    text: 'FEMALE',
                    isFemale: !isFamily,
                  ),
                ),
              ],
            ),
            AppSize.h18,
            HeightCard(
              text: 'Height',
              personHeight: slider,
              sm: 'sm',
              height: slider,
              onChanged: (value) {
                setState(() {
                  slider = value.toInt();
                });
              },
            ),
            AppSize.h18,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeightAge(
                  text: 'Weight',
                  san: weight,
                  iconRemove: Icons.remove_circle,
                  iconAdd: Icons.add_circle,
                  remove: () {
                    weight--;
                    setState(() {});
                  },
                  add: () {
                    weight++;
                    setState(() {});
                  },
                ),
                WeightAge(
                  text: 'Age',
                  san: age,
                  iconRemove: Icons.remove_circle,
                  iconAdd: Icons.add_circle,
                  remove: () {
                    age--;
                    setState(() {});
                  },
                  add: () {
                    age++;
                    setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalcualtorContainer(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: AppColors.appBarBgc,
      centerTitle: true,
      title: const Text(
        'BMI CALCULATOR',
        style: AppTextStyles.bmiTextStyle,
      ),
    );
  }
}
