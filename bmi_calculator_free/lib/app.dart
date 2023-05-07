import 'package:flutter/material.dart';
import 'package:bmi_calculator_free/components/example_floating_action_button.dart';
import 'package:bmi_calculator_free/example_weight_age.dart';
import 'package:bmi_calculator_free/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}
