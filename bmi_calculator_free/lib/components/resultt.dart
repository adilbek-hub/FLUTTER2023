import 'package:bmi_calculator_free/components/class/result.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.uzunu,
    required this.salmagy,
  });
  final double uzunu;
  final int salmagy;

  @override
  Widget build(BuildContext context) {
    double resultattar =
        Resultattar().calculateBmi(height: uzunu, weight: salmagy);
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
