import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const ShowDateTimePicker(),
    );
  }
}

class ShowDateTimePicker extends StatefulWidget {
  const ShowDateTimePicker({super.key});

  @override
  State<ShowDateTimePicker> createState() => _ShowDateTimePickerState();
}

class _ShowDateTimePickerState extends State<ShowDateTimePicker> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShowDateTimePicker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_dateTime.day} - ${_dateTime.month} - ${_dateTime.year}'),
            ElevatedButton(
              onPressed: () async {
                DateTime? _newDate = await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2024),
                );
                if (_newDate != null) {
                  setState(() {
                    _dateTime = _newDate;
                  });
                }
              },
              child: const Text('Get Date'),
            ),
          ],
        ),
      ),
    );
  }
}
