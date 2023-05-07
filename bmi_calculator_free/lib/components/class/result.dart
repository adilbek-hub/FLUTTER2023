import 'dart:math';

class Resultattar {
  double calculateBmi(double height, int weight) {
    final bmiJoop = weight / pow(height / 100, 2);
    return bmiJoop;
  }

  String? bmiResult(bmiJoop) {
    if (bmiJoop <= 18.4) {
      return 'Aryk';
    } else if (bmiJoop >= 18.5 && bmiJoop <= 24.9) {
      return 'Норма';
    } else if (bmiJoop >= 25) {
      return 'Semiz';
    }
    return null;
  }

  String? givDescription(bmiJoop) {
    if (bmiJoop <= 18.4) {
      return 'Тамак ичиңиз';
    } else if (bmiJoop >= 18.5 && bmiJoop <= 24.9) {
      return 'Молодессиз';
    } else if (bmiJoop >= 25) {
      return 'Тренировканы башта';
    }
    return null;
  }
}

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