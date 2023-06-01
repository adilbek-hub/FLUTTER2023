import 'package:flutter/material.dart';

class EastTable extends StatelessWidget {
  const EastTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: const Color(0xffdddddd)),
      children: const [
        TableRow(
          children: [
            TableCell(
              child: Text('Андорра (Andorra la Vella)'),
            ),
            TableCell(
              child: Text('Австрия (Вена)'),
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
              child: Text(
                'Германия (Берлин)',
              ),
            ),
            TableCell(
              child: Text('Бельгия (Брюссель)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Франция (Париж)'),
            ),
            TableCell(
              child: Text('Италия (Рим)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Center(child: Text('Греция (Афины)')),
            ),
            TableCell(
              child: Text('Ирландия (Дублин)'),
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
              child: Text('Мальта (Валлетта)'),
            ),
            TableCell(
              child: Text('Лихтенштейн (Вадуз)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Люксембург (Люксембург)'),
            ),
            TableCell(
              child: Text('Португалия (Лиссабон)'),
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
              child: Text('Хорватия (Загреб)'),
            ),
            TableCell(
              child: Text('Нидерландтар (Амстердам)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Швейцария (Берн)'),
            ),
            TableCell(
              child: Text('Сан-Марино (Сан-Марино)'),
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
              child: Text(
                'Испания (Мадрид)',
              ),
            ),
            TableCell(
              child: Text('Улуу Британия (Лондон)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Түркия (Анкара)'),
            ),
            TableCell(
              child: Text('Азербайжан (Баку)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Center(child: Text('Беларусь (Минск)')),
            ),
            TableCell(
              child: Text('Сербия (Белград)'),
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
              child: Text('Словакия (Братислава)'),
            ),
            TableCell(
              child: Text('Украина (Киев)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Польша (Варшава)'),
            ),
            TableCell(
              child: Text('Молдова Республикасы (Кишинев)'),
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
              child: Text('Россия (Москва)'),
            ),
            TableCell(
              child: Text('Чех Республикасы (Прага)'),
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
              child: Text('Эстония (Таллин)'),
            ),
            TableCell(
              child: Text('Грузия (Тбилиси)'),
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
              child: Text('Венгрия (Будапешт)'),
            ),
            TableCell(
              child: Text('Латвия (Рига)'),
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
              child: Text('Литва (Вильнюс)'),
            ),
            TableCell(
              child: Text('Армения (Ереван)'),
            ),
          ],
        ),
      ],
    );
  }
}
