import 'package:flutter/material.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  List<Tourist> tourists = [];
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passportController = TextEditingController();

  void _addTourist() {
    setState(() {
      String name = _nameController.text;
      String passport = _passportController.text;
      if (name.isNotEmpty && passport.isNotEmpty) {
        tourists.add(Tourist(name: name, passport: passport));
        _nameController.clear();
        _passportController.clear();
      }
    });
  }

  void _completeReservation() {
    // Здесь можно добавить логику для завершения бронирования
    // например, отправку данных на сервер или переход на следующий экран
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Бронирование'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Данные о туристах:'),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                itemCount: tourists.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Турист ${index + 1}:'),
                    subtitle: Text(
                        'Имя: ${tourists[index].name}, Паспорт: ${tourists[index].passport}'),
                  );
                },
              ),
            ),
            Divider(),
            Text('Добавить нового туриста:'),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Имя'),
            ),
            TextField(
              controller: _passportController,
              decoration: InputDecoration(labelText: 'Паспорт'),
            ),
            ElevatedButton(
              onPressed: _addTourist,
              child: Text('Добавить туриста'),
            ),
            ElevatedButton(
              onPressed: _completeReservation,
              child: Text('Завершить бронирование'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tourist {
  final String name;
  final String passport;

  Tourist({required this.name, required this.passport});
}
