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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime = DateTime(2022, 22, 14, 5, 30);

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100));

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));
  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, "0");
    final minutes = dateTime.minute.toString().padLeft(2, "0");

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "date and time".toUpperCase(),
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      child: Text(
                          "${dateTime.year}/ ${dateTime.month}/${dateTime.day}"),
                      onPressed: () async {
                        final date = await pickDate();
                        if (date == null) return; // pressed cancel
                        final newDateTime = DateTime(date.year, date.month,
                            date.day, dateTime.hour, dateTime.minute);
                        setState(() => dateTime = newDateTime);
                      }),
                  ElevatedButton(
                      child: Text("$hours:$minutes"),
                      onPressed: () async {
                        final time = await pickTime();
                        if (time == null) return; //pressed cancel

                        final newDateTime = DateTime(
                            dateTime.year,
                            dateTime.month,
                            dateTime.day,
                            time.hour,
                            time.minute);
                        setState(() => dateTime = newDateTime);
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
