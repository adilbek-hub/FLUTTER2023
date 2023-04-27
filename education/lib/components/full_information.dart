import 'package:education/constants/app_color.dart';
import 'package:education/model/subjects.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class FullInformation extends StatefulWidget {
  const FullInformation({super.key, required this.subjectsFull});
  final Subjects subjectsFull;

  @override
  State<FullInformation> createState() => _FullInformationState();
}

class _FullInformationState extends State<FullInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple, Colors.red]),
        title: Center(
          child: Text(
            'Европа'.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              widget.subjectsFull.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text('${widget.subjectsFull.subject}'),
            Text(
                'Европа мамлекеттери жана борборлору – Түндүк жана Балкан өлкөлөрү жана борборлору'),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Германия (Берлин)')),
                    ),
                    TableCell(
                      child: Text('Row 1, Column 2'),
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  children: [
                    TableCell(
                      child: Text('Row 2, Column 1'),
                    ),
                    TableCell(
                      child: Text('Row 2, Column 2'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Text('Row 3, Column 1'),
                    ),
                    TableCell(
                      child: Text('Row 3, Column 2'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
