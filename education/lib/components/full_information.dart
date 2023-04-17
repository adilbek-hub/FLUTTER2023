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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              subjectsFull.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text('${subjectsFull.subject}'),
          ],
        ),
      ),
    );
  }
}
