import 'package:education/views/biology_topics_view.dart';

import 'package:flutter/material.dart';

class Biologgy extends StatelessWidget {
  const Biologgy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/capitals/map.jpg'),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.adaptive.arrow_back),
          ),
          const Expanded(child: BiologyTopics()),
        ],
      ),
    );
  }
}
