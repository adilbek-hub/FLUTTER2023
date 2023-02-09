import 'package:flutter/material.dart';
import 'package:quize_app/model/quize_model.dart';
import 'package:quize_app/widgets/quize_button.dart';
import 'package:quize_app/widgets/result_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];
  void teksher(bool value) {
    if (quizzes[index].joop == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        setState(() {
          index = 0;
          showDialog(
              // barrierColor: const Color.fromARGB(255, 241, 223, 223),
              context: context,
              builder: ((context) {
                return AlertDialog(
                  elevation: 0,
                  backgroundColor: Colors.grey[400],
                  title: const Text('Сиздин Тестиңиздин жооптору'),
                  content: Text(
                      'Туура жообуңуз: ${tuuraJooptor.length} Туура эмес жооптор:${kataJooptor.length}'),
                );
              }));
          jooptor.clear();
        });
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 15, 15, 15),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 07',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].suroo,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const Spacer(),
            QuizeButton(
              true,
              onPressed: (v) {
                teksher(v);
              },
            ),
            const SizedBox(height: 15),
            QuizeButton(
              false,
              onPressed: (v) {
                teksher(v);
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: jooptor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((BuildContext context, int index) {
                    return jooptor[index]
                        ? const ResultIcon(true)
                        : const ResultIcon(false);
                  })),
            ),
            // Row(
            //   children: const [
            //     ResultIcon(true),
            //     ResultIcon(false),
            //   ],
            // ),
            const SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
