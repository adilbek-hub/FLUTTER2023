import 'package:flutter/material.dart';

class Usa extends StatelessWidget {
  const Usa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Америка Кошмо Штаттары'),
      ),
      body: ListView(children: [
        const Text(
            'Америка Кошмо Штаттары, АКШ (англ. United States of America, USA) – Түндүк Америкадагы мамлекет. Түндүгүнөн Канада, түштүк-чыгышынан Куба (Гуантанамо аскер базасы), түштүк-батышынан Мексика менен чектешет. Чыгышын Атлантика океаны, батышын Тынч океан, түштүгүн Мексика булуңу чулгайт. Аянты 9,4 млн км2. Калкы 314,5 млн (2012). Борбору - Вашингтон. Мамлекеттик тили - англис тили. Акча бирдиги - АКШ доллары. Административдик аймактары - штат укугун алган өзүнчө Аляска, Гавайи штаттарынан жана Колумбия федерация (борбордук) округунан турат . АКШнын ээликтери: Вест-Индиядагы Виргиния аралы, Чыгыш Самоа, Гуам жана Океаниядагы бир топ майда аралдар. АКШнын убактылуу «опекасында» Тынч океандагы Каролина, Мариана жана Маршалл аралдарынан турат. 1903-жылдан бери ушунун таандык Панама каналынын зонасы АКШнын ижарасында.'),
        const SizedBox(height: 10),
        const Text('АКШнын штаттары'),
        Table(
          textDirection: TextDirection.rtl,
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.all(width: 1.0, color: Colors.black),
          children: const [
            TableRow(children: [
              Text(
                "Админ. борборлору",
                textScaleFactor: 1.4,
              ),
              Text("Калкы, млн киши (1996)", textScaleFactor: 1.5),
              Text("Штаттары", textScaleFactor: 1.5),
            ]),
            TableRow(children: [
              Text("B.Tech", textScaleFactor: 1.5),
              Text("ABESEC", textScaleFactor: 1.5),
              Text("AKTU", textScaleFactor: 1.5),
            ]),
            TableRow(children: [
              Text("12th", textScaleFactor: 1.5),
              Text("Delhi Public School", textScaleFactor: 1.5),
              Text("CBSE", textScaleFactor: 1.5),
            ]),
            TableRow(children: [
              Text("High School", textScaleFactor: 1.5),
              Text("SFS", textScaleFactor: 1.5),
              Text("ICSE", textScaleFactor: 1.5),
            ]),
          ],
        ),
      ]),
    );
  }
}
