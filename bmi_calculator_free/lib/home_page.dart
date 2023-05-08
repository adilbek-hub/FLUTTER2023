import 'dart:math';

import 'package:bmi_calculator_free/components/class/result.dart';
import 'package:bmi_calculator_free/components/resultt.dart';
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
  void a() {
    final res = weight / pow(height / 100, 2);
    if (res <= 18) {
      _showMyDialog(context, 'Aryk');
    } else if (res > 18 && res <= 24) {
      _showMyDialog(context, 'Norma');
    } else if (res >= 25) {
      _showMyDialog(context, 'Semiz');
    } else {
      _showMyDialog(context, 'Belgisiz');
    }
  }

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
                      heroTag1: 'tab1',
                      heroTag2: 'tab2',
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
                      heroTag1: 'tab3',
                      heroTag2: 'tab4',
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
          // a();

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Result(
                uzunu: height,
                salmagy: weight,
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    // barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: Text(text),
        actions: <Widget>[
          TextButton(
            child: const Text('Чыгуу'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
