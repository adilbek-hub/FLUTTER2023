import 'package:education/model/suroo.dart';
import 'package:education/pages/home_page.dart';
import 'package:education/pages/landing_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // checkerboardOffscreenLayers: true,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: /*MyHomePage(),*/ const LandingPage(),
    );
  }
}
