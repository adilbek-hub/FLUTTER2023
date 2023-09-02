import 'package:flutter/material.dart';

import 'package:education/model/informatica_suroo.dart';
import 'package:education/pages/informatica_test/sistemalyk_programmalyk_kamsyzdoo.dart';

import '../../model/informatica_model.dart';

class SistemalykProgrammalykKamsyzdoo extends StatelessWidget {
  const SistemalykProgrammalykKamsyzdoo({
    Key? key,
    required this.informaticaTopics,
  }) : super(key: key);
  final InformaticaTopics informaticaTopics;

  @override
  Widget build(BuildContext context) {
    final sistemalykProgramdykKamsyzdoo =
        informaticaTopics.informatica[3].sistemalykProgrammalykKamsyzdoo![0];
    return Scaffold(
      appBar: AppBar(
        title: Text('Информатика'.toUpperCase()),
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
                  sistemalykProgramdykKamsyzdoo.tema1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  sistemalykProgramdykKamsyzdoo.description1,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.text2} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description2,
                      ),
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.text3} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description3,
                      ),
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.text3} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description3,
                      ),
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.tema4} ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description4,
                      ),
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.text5} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description5,
                      ),
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.tema6}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description6,
                      ),
                      TextSpan(
                        text: '\n${sistemalykProgramdykKamsyzdoo.tema7} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: sistemalykProgramdykKamsyzdoo.description7,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////

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
                                      SistemalykProgrammalykKamsyzdooTestPage(
                                    sistemalykKamsyzdoo: sistemalykKamsyzdoo,
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
