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
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber <= questionBank.length - 2) {
      _questionNumber++;
    }
    print(questionBank.length);
    print(_questionNumber);
  }

  String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
