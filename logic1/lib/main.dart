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
      home: const LogicPage1(),
    );
  }
}

class LogicPage1 extends StatefulWidget {
  const LogicPage1({super.key});

  @override
  State<LogicPage1> createState() => _LogicPage1State();
}

class _LogicPage1State extends State<LogicPage1> {
  //_phoneNumber өзгөрмө, TextFieldке киргизилген текстти сактоо үчүн колдонулат.
  String _phoneNumber = '';
  //_canSubmit алуучусу FloatingActionButton киргизилген телефон номеринин узундугуна
  //жараша иштетилиши же өчүрүлүшү керек экендигин аныктоо үчүн колдонулат.

  // bool get canSubmit => _phoneNumber.length == 10;
  bool canSubmit() {
    if (_phoneNumber.length == 10) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              //клавиатурасынын түрүн колдонууга коюлган.
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                setState(() {
                  _phoneNumber = value;
                });
              },
            ),
            const SizedBox(height: 20),
            //Эгерде _canSubmit чын болсо,onPressed кайра чалуусу (){} каалаган
            //аракетти аткарууга коюлган.
            FloatingActionButton(onPressed: canSubmit() ? () {} : null)
          ],
        ),
      ),
    );
  }
}
