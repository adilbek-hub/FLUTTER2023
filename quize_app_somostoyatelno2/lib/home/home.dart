import 'package:flutter/material.dart';

import 'package:quize_app_somostoyatelno2/quize_brain.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  QuizeListUtil quizeListUtil = QuizeListUtil();
  List<Icon> scorekeeper = [];

//6
  void teksher(bool userPicker) {
    bool? correctAnswer = quizeListUtil.getCorrectAnswer();
    setState(() {
      if (quizeListUtil.isFinished() == true) {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              'Оюн аяктады',
              textAlign: TextAlign.center,
            ),
            content: const Text(
              'Кайра башынан ойноңуз',
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );

        quizeListUtil.reset();
        scorekeeper = [];
      } else {
        if (correctAnswer == userPicker) {
          scorekeeper.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scorekeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizeListUtil.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Тапшырма - 07',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Spacer(),
            Text(
              '${quizeListUtil.getQuestionText()}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 38,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  teksher(true);
                },
                child: const Text(
                  'Туура',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                height: 38,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      teksher(false);
                    },
                    child: const Text(
                      'Туура эмес',
                      style: TextStyle(fontSize: 20),
                    ))),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                  itemCount: scorekeeper.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return scorekeeper[index];
                  }),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
    );
  }
}

class Custom extends StatefulWidget {
  const Custom({super.key});

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom'),
      ),
    );
  }
}
