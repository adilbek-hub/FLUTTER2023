import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flesh_chat_j/components/login_register_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Flesh chat'),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 10,
              ),
            ),
            const SizedBox(height: 10),
            LoginRegisterWidget(
              title: 'Login',
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
            ),
            const SizedBox(height: 10),
            LoginRegisterWidget(
              title: 'Register',
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
