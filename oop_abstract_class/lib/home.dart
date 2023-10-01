import 'package:flutter/material.dart';
import 'package:oop_abstract_class/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Transport transport = Car();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация о транспорте'),
      ),
      body: const Column(children: []),
    );
  }
}
