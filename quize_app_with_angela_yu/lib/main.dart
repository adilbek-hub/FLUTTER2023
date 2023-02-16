import 'package:flutter/material.dart';
import 'package:quize_app_with_angela_yu/quize_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  List<Icon> scorekeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizbrain.getCorrectAnswer();

    setState(() {
      if (quizbrain.isFinished() == true) {
        Alert(
          context: context,
          title: "Finished!",
          desc: "You\'ve reached the end of the quiz.",
        ).show();

        quizbrain.reset();

        scorekeeper = [];
      } else {
        if (correctAnswer == userPickedAnswer) {
          scorekeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scorekeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
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
              style: TextStyle(
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
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
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
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
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
        // Row(
        //   children: scorekeeper,
        // ),
      ],
    );
  }
}
