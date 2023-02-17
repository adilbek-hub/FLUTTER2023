import 'package:flutter/material.dart';
import 'package:quize_app_with_angela_yu/quize_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// QuizBrain() ды quizbrain га жарыялап алдык, эми ушул пейджте колдоно беребиз.
QuizBrain quizbrain = QuizBrain();

void main() {
  runApp(const Quizer());
}

class Quizer extends StatelessWidget {
  const Quizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Quizzy(),
          ),
        ),
      ),
    );
  }
}

class Quizzy extends StatefulWidget {
  const Quizzy({Key? key}) : super(key: key);

  @override
  _QuizzyState createState() => _QuizzyState();
}

class _QuizzyState extends State<Quizzy> {
  // Иконка алуучу ичи бош болгон лист
  List<Icon> scorekeeper = [];
// Функция булен тибиндеги колдонуучуТандаганЖооп параметрин алат,
  void checkAnswer(bool userPickedAnswer) {
    // булен болгон correctAnswer ге жооптордун фукциясын барабарлап койдук
    bool correctAnswer = quizbrain.getCorrectAnswer();
// кайра курулат
    setState(() {
      // Эгер isFinished тин условиясы труга барабар болсо
      if (quizbrain.isFinished() == true) {
        // Анда алерт чыгар
        Alert(
          context: context,
          title: "Finished!",
          desc: "You\'ve reached the end of the quiz.",
        ).show();
        // Алерттен кийин лиссти перезагрузка кылып башкы абалга кайтарып кой.
        quizbrain.reset();
        // иконкаларды да тазалап жаңыртып кой.
        scorekeeper = [];
        // Же
      } else {
        // Эгер суроожооптордогу жазылган боюнчага, колдонуучунун басканы барабар болсо
        if (correctAnswer == userPickedAnswer) {
          // анда иконка алуучу бош лист scorekeeperге chek иконкасын чыгар
          scorekeeper.add(
            const Icon(
              Icons.check,
              color: Colors.yellow,
            ),
          );
          // Же
        } else {
          // анда иконка алуучу бош лист scorekeeperге close иконкасын чыгар
          scorekeeper.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        // Кийинки суроого өт
        quizbrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 7,
          child: Center(
            child: Text(
              quizbrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 252, 216, 56)),
              ),
              onPressed: () {
                checkAnswer(true);
              },
              child: const Text(
                'True',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 245, 48, 34)),
              ),
              onPressed: () {
                checkAnswer(false);
              },
              child: const Text(
                'False',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: scorekeeper.length,
              itemBuilder: ((context, index) {
                return scorekeeper[index];
              })),
        )
      ],
    );
  }
}
