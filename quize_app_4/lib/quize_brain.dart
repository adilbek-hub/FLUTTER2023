import 'package:quize_app_4/model/model.dart';

class QuizeBrain {
  int index = 0;
  List<QuizeModel> surooJoop = [
    QuizeModel(suroo: 'Кыргызстанда 7 область барбы?', joop: true),
    QuizeModel(suroo: 'Кыргызстанда 8 область барбы?', joop: false),
  ];
  void nextQuestion() {
    if (index <= surooJoop.length) {
      index++;
    }
  }

  String suroolor() {
    return surooJoop[index].suroo;
  }
}
