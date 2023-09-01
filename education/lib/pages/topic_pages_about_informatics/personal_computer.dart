import 'package:education/model/subjects2.dart';
import 'package:flutter/material.dart';
import 'package:education/model/informatica_suroo.dart';
import 'package:education/pages/informatica_test/personal_computer_test_page.dart';

class PersonalComputers extends StatelessWidget {
  const PersonalComputers({
    Key? key,
    required this.informaticaTopics,
  }) : super(key: key);
  final InformaticaTopics informaticaTopics;

  @override
  Widget build(BuildContext context) {
    final presonalComputers =
        informaticaTopics.informatica[1].personalComputer![0];
    return Scaffold(
      appBar: AppBar(
        title: Text(informaticaTopics.informatica[0].title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Text(
                  presonalComputers.tema1,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  presonalComputers.description1,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n${presonalComputers.text2} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description2,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.text3} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description3,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.tema4} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description4,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.text5} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description5,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.tema6} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: '${presonalComputers.description6} ',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////

                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${presonalComputers.tema7} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description7,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.tema8} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description8,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                SizedBox(
                  height: 100,
                  width: 300,
                  child: Card(
                    color: Colors.red[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Урматтуу окуучу!! Тест сынагынан өтүңүз.',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff42d792),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      PersonalComputerTestPage(
                                    personalComputer: personalComputer,
                                  ),
                                ),
                              );
                            },
                            child: const Text('ТЕСТ'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
