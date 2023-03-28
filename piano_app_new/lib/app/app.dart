import 'package:flutter/material.dart';
import 'package:piano_app_new/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const PianoApp(),
    );
  }
}
