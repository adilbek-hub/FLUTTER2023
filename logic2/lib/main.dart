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
      home: const LogicPage2(),
    );
  }
}

class LogicPage2 extends StatefulWidget {
  const LogicPage2({super.key});

  @override
  State<LogicPage2> createState() => _LogicPage2State();
}

class _LogicPage2State extends State<LogicPage2> {
  // _phoneNumber бул өзгөрмө, ТекстФиелге киргизилген текстти сактоо үчүн колдонулат.
  String _phoneNumber = '';
  // киргизилген тексттин  узундугуна жараша  FloatingActionButton иштетилиши
  // же өчүрүлүшү керек экендигин аныктоо үчүн колдонулат.
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
      appBar: AppBar(
        title: const Center(child: Text('LogicPage2')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  // Жаңы текстти _phoneNumber өзгөрмөсүнө дайындоо.
                  _phoneNumber = value;
                });
              },
            ),
            ElevatedButton(
              //Эгерде _canSubmit true болсо,onPressed иштесин false болсо иштебесин
              onPressed: canSubmit() ? () {} : null,
              child: const Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
