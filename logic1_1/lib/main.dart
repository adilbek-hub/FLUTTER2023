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
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const LogicPage1_1(),
    );
  }
}

class LogicPage1_1 extends StatefulWidget {
  const LogicPage1_1({super.key});

  @override
  State<LogicPage1_1> createState() => _LogicPage1_1State();
}

class _LogicPage1_1State extends State<LogicPage1_1> {
  //текс алуучу өзгөрмө
  String name = '';
  //Текстке Адилбекти алуучу функция
  bool canChange() {
    if (name == 'Adilbek') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogicPage1_1'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (v) {
                setState(() {
                  // textFieldtegi jazuulardy name ozgormosuno juktoo
                  name = v;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: canChange() ? 200 : null,
              child: FloatingActionButton(
                backgroundColor: canChange() ? Colors.red : null,
                onPressed: canChange() ? () {} : null,
                child: canChange()
                    ? const Icon(Icons.start)
                    : const Icon(Icons.stop),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
