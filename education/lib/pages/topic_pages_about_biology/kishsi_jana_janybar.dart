import 'package:flutter/material.dart';

import 'package:education/model/biology_model.dart';

import 'package:education/pages/biology_test/biology_test.dart';

class KishiJanaJanybar extends StatelessWidget {
  const KishiJanaJanybar({Key? key, required this.biologyTopicsModel})
      : super(key: key);
  final List<BiologyTopicsModel> biologyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Биология'.toUpperCase()),
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
                  biologyTopicsModel[0].title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  biologyTopicsModel[0].aboutManAndAnimal![0].description1,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[0].aboutManAndAnimal![0].description2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description3,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description4,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description5,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description6,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[0].aboutManAndAnimal![0].description7,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description8,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description9,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description10,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description11,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                //////////////
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[0].aboutManAndAnimal![0].description13,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description14,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description15,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description16,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description17,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                /////////////
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[0].aboutManAndAnimal![0].description18,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description19,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description20,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description21,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 80, 108, 250),
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[0]
                            .aboutManAndAnimal![0]
                            .description22,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                /////////////
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
                                      const KishiJanybarTestPage(),
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
