import 'package:quize_app_somostoyatelno2/model/model.dart';

class QuizeListUtil {
  int index = 0;
  List<QuizeModel> suroolorJooptor = [
    QuizeModel(suroolor: 'Кыргызстан Швейцарияга окшошпу?', jooptor: true),
    QuizeModel(suroolor: 'Алматы Кыргызстандын шаарыбы?', jooptor: false),
    QuizeModel(suroolor: 'Биздин өлкөдө ноудбук сатабы?', jooptor: true),
    QuizeModel(suroolor: 'Америка Казакстандын кошунасыбы?', jooptor: false),
    QuizeModel(
        suroolor: 'КТРК каналы Кыргызстандын Улуттук каналыбы?', jooptor: true),
  ];
//1
  void nextQuestion() {
    if (index <= suroolorJooptor.length) {
      index++;
    }
  }

//2
  String? getQuestionText() {
    return suroolorJooptor[index].suroolor;
  }

//3
  bool? getCorrectAnswer() {
    return suroolorJooptor[index].jooptor;
  }

//4
  bool isFinished() {
    if (suroolorJooptor[index] == suroolorJooptor.last) {
      return true;
    } else {
      return false;
    }
  }

//5
  void reset() {
    index = 0;
  }
}
