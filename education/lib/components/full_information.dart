import 'package:education/constants/app_color.dart';
import 'package:education/model/subjects.dart';
import 'package:flutter/material.dart';

class FullInformation extends StatelessWidget {
  const FullInformation({super.key, required this.subjectsFull});
  final Subjects subjectsFull;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
      ),
      body: Column(
        children: [
          Text('${subjectsFull.subject}'),
        ],
      ),
    );
  }
}
