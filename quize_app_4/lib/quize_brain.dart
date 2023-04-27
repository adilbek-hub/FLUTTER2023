import 'package:quize_app_4/model/model.dart';

class QuizeBrain {
  int ind = 0;
  List<QuizeModel> surooJoop = [
    QuizeModel(suroo: 'Кыргызстанда 7 область барбы?', joop: true),
    QuizeModel(suroo: 'Кыргызстанда 8 область барбы?', joop: false),
    QuizeModel(suroo: 'Кыргызстанда 9 область барбы?', joop: false),
    QuizeModel(suroo: 'Кыргызстанда 10 область барбы?', joop: false),
    QuizeModel(suroo: 'Кыргызстанда 11 область барбы?', joop: false),
  ];

  String suroolor() {
    return surooJoop[ind].suroo;
  }

  void nextQuestion() {
    if (ind <= surooJoop.length) {
      ind++;
    }
  }

  void finishQuestion() {
    if (surooJoop[ind - 1] == surooJoop.last) {
      ind = 0;
    }
  }
}
