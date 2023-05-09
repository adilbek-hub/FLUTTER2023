// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ForPractice(),
    );
  }
}

class ForPractice extends StatefulWidget {
  const ForPractice({super.key});

  @override
  State<ForPractice> createState() => _ForPracticeState();
}

class _ForPracticeState extends State<ForPractice> {
  bool a = false;
  TextEditingController textController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  List<String> name = [];
  List<int> age = [];

  Future<void> _showMyDialog(BuildContext context, dynamic text) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: Row(
            children: [
              const Expanded(child: Text('ФИО')),
              Expanded(
                child: Column(children: [
                  TextField(
                    controller: textController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Password',
                    ),
                  ),
                  TextField(
                    controller: ageController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Password',
                    ),
                  ),
                ]),
              )
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Safe'),
              onPressed: () {
                setState(() {
                  name2.add(textController);
                  name2.add(ageController);
                  name.add(name2);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List allList = [name, age];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForPractice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: a == true
                  ? null
                  : () {
                      _showMyDialog(context, 'Hello');
                    },
              child: Text('restart'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: allList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Column(
                        children: [
                          Text('${allList[index]}'),
                          Text(''),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
