import 'dart:math';

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
  //max 50 min 5
  // 1) 50 - 5 = 45
  // 2) Random.nextInt(45 + 1) => 0 ..44
  // 3) 5 + 0 .. 44 => 5 .. 49
  int nextNumber({required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);
  @override
  Widget build(BuildContext context) {
    // maksimalduu maani  9ga al emi minimalduu maani 9 ga barabar
    // final number = Random().nextInt(10);
    final list = List.generate(10, (_) => nextNumber(min: 5, max: 10));
    print(list);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
          child: Text(
        '$list',
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
