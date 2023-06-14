import 'package:education/components/geography_topics.dart';
import 'package:education/components/history_topics.dart';

import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/capitals/geographyTeather.jpg'),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.adaptive.arrow_back),
          ),
          const Expanded(child: HistoryTopics()),
        ],
      ),
    );
  }
}
