import 'package:education/views/informatica_topics_view.dart';
import 'package:flutter/material.dart';

class Informatica extends StatelessWidget {
  const Informatica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: InformaticaTopics()),
        ],
      ),
    );
  }
}
