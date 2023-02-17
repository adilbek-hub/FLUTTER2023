import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> questionBank = [
    Question('Кыргызстан тоолу өлкөбу?', true),
    Question('Кыргызстан деңиз менен байланышуусу барбы?', false),
    Question('Флаттерди Гугл корпорациясы чыгарганбы?', true),
    Question('Тоок жумурка тууйбу?', true),
    Question('Күчтүү ноудбук менен мобилдик тиркеме жазаса болобу?', true),
    Question('Адам баласы сүйлөйбү?', true),
    Question('Айда аба барбы?', false),
    Question('Америка программистердин сүйгөн өлкөсүбү?', true),
  ];
// Эгер сан сурообанктын узундугунан кичине же барабар болсо
// санды бирден кош функциясы.
  void nextQuestion() {
    if (_questionNumber <= questionBank.length) {
      _questionNumber++;
    }
    print(questionBank.length);
    print(_questionNumber);
  }

// сурообанктын  кошулуучу  тексттин кайтаруучу стринг функциясы
  String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }

//сурообанктын кошулуучу суроонун жоопторунун кайтаруучу булен функциясы
  bool getCorrectAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }

// Эгер сурообанктын индекси сурообанктын аяккы чегине барабар болсо
// тру кайтар эгер ал болбосо фолс кайтаруу булен функциясы.
  bool isFinished() {
    if (questionBank[_questionNumber] == questionBank.last) {
      return true;
    } else {
      return false;
    }
  }

// кошулуп жаткан санды баштагыдай ноль кылып кой функциясы
  void reset() {
    _questionNumber = 0;
  }
}
