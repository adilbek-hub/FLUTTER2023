import 'dart:math';

import 'package:bmi_calculator_free/components/class/result.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_free/components/calculate_button.dart';
import 'package:bmi_calculator_free/components/height.dart';
import 'package:bmi_calculator_free/components/male_female.dart';
import 'package:bmi_calculator_free/components/status_card.dart';
import 'package:bmi_calculator_free/components/weight_age.dart';
import 'package:bmi_calculator_free/theme/app_colors.dart';
import 'package:bmi_calculator_free/theme/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  int weight = 65;
  int age = 0;
  double height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgcColor,
        title: const Center(child: Text(AppTexts.bmi)),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                          print('object1');
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppTexts.male,
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false;
                          print('object2');
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppTexts.female,
                        isTrue: !isTrue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            StatusCard(
              child: Height(
                text: AppTexts.height,
                text1: '${height.toInt()}',
                text2: 'cm',
                onChanged: (value) {
                  setState(
                    () {
                      height = value;
                    },
                  );
                },
                height: height,
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.weight,
                      san: '$weight',
                      removeBasuu: () {
                        setState(() {
                          weight--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 25),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '$age',
                      removeBasuu: () {
                        setState(() {
                          age--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onPressed: () {
          // final res = weight / pow(height / 100, 2);
          // if (res <= 18) {
          //   print('Арыксыз: $res');
          // } else if (res > 18 && res <= 24) {
          //   print('Сиз нормасыз: $res');
          // } else if (res >= 25) {
          //   print('Сиз Семиссиз: $res');
          // } else {
          //   print('Эсептей албадык: $res');
          // }
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Result(
                        height: height,
                        weight: weight,
                      )));
        },
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.height,
    required this.weight,
  });
  final double height;
  final int weight;

  @override
  Widget build(BuildContext context) {
    double resultattar = Resultattar().calculateBmi(height, weight);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            width: 150,
            height: 200,
            child: Column(
              children: [
                Text(Resultattar().bmiResult(resultattar).toString()),
                Text(resultattar.toStringAsFixed(0)),
                Text(Resultattar().givDescription(resultattar).toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
