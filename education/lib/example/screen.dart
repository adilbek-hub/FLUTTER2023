import 'package:flutter/material.dart';

class Koldonuuchu extends StatefulWidget {
  const Koldonuuchu({super.key});

  @override
  State<Koldonuuchu> createState() => _KoldonuuchuState();
}

class _KoldonuuchuState extends State<Koldonuuchu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen1'),
      ),
    );
  }
}

class Jurok extends StatefulWidget {
  const Jurok({super.key});

  @override
  State<Jurok> createState() => _JurokState();
}

class _JurokState extends State<Jurok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen2'),
      ),
    );
  }
}
