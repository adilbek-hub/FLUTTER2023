import 'package:flutter/material.dart';
import 'package:tapshyrma_4_tel_email_model/model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
    );
  }
}
