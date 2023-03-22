import 'package:flutter/material.dart';
import 'package:login_page_with_for_loop/model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
      body: Column(
        children: [
          Text(student.surName),
          Text(student.email),
          Text(student.age.toString()),
          Text(student.group.toString()),
        ],
      ),
    );
  }
}
