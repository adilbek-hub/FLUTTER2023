import 'package:education/components/informatica_topics.dart';
import 'package:flutter/material.dart';

class Informatica extends StatelessWidget {
  const Informatica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Image.asset('assets/images/capitals/map.jpg'),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.adaptive.arrow_back),
          ),
          const Expanded(child: InformaticaTopics()),
        ],
      ),
    );
  }
}
