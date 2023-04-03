import 'package:flutter/material.dart';
import 'package:piano_app_new/example2/demo/demo_screen.dart';
import 'package:piano_app_new/example3/demo/demo_screen.dart';
import 'package:piano_app_new/example4/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Piano4(),
    );
  }
}
