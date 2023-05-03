import 'package:education/components/full_information.dart';
import 'package:education/components/geography_topics.dart';
import 'package:education/model/subjects.dart';
import 'package:flutter/material.dart';

class Geography extends StatelessWidget {
  const Geography({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/capitals/geographyTeather.jpg'),
          const Expanded(child: GeographyTopics()),
        ],
      ),
    );
  }
}

