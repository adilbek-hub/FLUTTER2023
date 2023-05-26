import 'package:flutter/material.dart';
import 'package:forms/focus%20_text_fields.dart';
import 'package:forms/form_validate.dart';
import 'package:forms/style_text_field.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FocusTextField(),
    );
  }
}
