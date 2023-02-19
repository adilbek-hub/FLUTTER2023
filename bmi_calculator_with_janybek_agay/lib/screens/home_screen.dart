import 'package:bmi_calculator_with_janybek_agay/widgets/calculator_container_widget.dart';
import 'package:bmi_calculator_with_janybek_agay/widgets/gender_container.dart';
import 'package:bmi_calculator_with_janybek_agay/widgets/weight_age_container.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator_with_janybek_agay/constants/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 4, 49),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a001f),
        title: const Center(
            child: Text('BMI Calculator', style: AppTextStyles.bmiCalculate)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GenderContainer(
                    icons: FontAwesomeIcons.mars,
                    texts: 'male'.toUpperCase(),
                  ),
                  GenderContainer(
                    icons: FontAwesomeIcons.venus,
                    texts: 'female'.toUpperCase(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff0b0120),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    'height'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${_currentSliderValue.toInt()}",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 55,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 22,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  //
                  Slider(
                    //slayderdin ativ taraby ak ondo bolsun
                    activeColor: Colors.white,
                    //slayderdin inativ taraby grey ondo bolsun
                    inactiveColor: Colors.grey,
                    // jyldyrgych fioletovoy ondo bolsun
                    thumbColor: Colors.purple,
                    // togoloktun bashtaluu maanisi 30
                    value: _currentSliderValue,
                    onChanged: (/*koldonuuchunun bergen maanisi*/ userValue) {
                      // setState bul sandy kayra kuruuga
                      setState(() {
                        //maani koldonuuchunun jyldyruusuna baylandy.
                        _currentSliderValue = userValue;
                      });
                    },
                    // maksimalduu uzunduk 220
                    max: 220,
                    //sandy 220ga bolushturup saluu
                    divisions: 220,
                    //san kanch bolgonun korsotot
                    label: '$_currentSliderValue',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeightAgeContainer(
                    texts: 'weight'.toUpperCase(),
                    ints: '60',
                    iconMinus: FontAwesomeIcons.circleMinus,
                    iconPlus: FontAwesomeIcons.circlePlus,
                  ),
                  WeightAgeContainer(
                    texts: 'age'.toUpperCase(),
                    ints: '20',
                    iconMinus: FontAwesomeIcons.circleMinus,
                    iconPlus: FontAwesomeIcons.circlePlus,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculatorWidget(),
    );
  }
}
