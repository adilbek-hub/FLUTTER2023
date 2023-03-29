import 'package:flutter/material.dart';
import 'package:piano_app_new/example2/demo/demo_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const PianoApp2(),
    );
  }
}
