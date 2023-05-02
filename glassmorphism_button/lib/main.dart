import 'package:flutter/material.dart';
import 'package:glassmorphism_button/glass_morphism.dart';
import 'package:glassmorphism_buttons/glassmorphism_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
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
  bool _isBlur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Center(child: Text('Glassmorphism Button')),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://tinyurl.com/2p8zr2ze',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isBlur = !_isBlur;
                });
              },
              child: GlassMorphism(
                blur: _isBlur ? 20 : 0,
                opasity: 0.2,
                // Биз өзгөртөбүз
                child: const SizedBox(
                  height: 210,
                  width: 320,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
