import 'package:flutter/material.dart';

class NorthBalkanTable extends StatelessWidget {
  const NorthBalkanTable({
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
              child: Text('Дания (Копенгаген)'),
            ),
            TableCell(
              child: Text('Норвегия (Осло)'),
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
                'Словения (Любляна)',
              ),
            ),
            TableCell(
              child: Text('Түндүк Македония (Скопье)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Черногория (Подгорица)'),
            ),
            TableCell(
              child: Text('Швеция (Стокгольм)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Center(child: Text('Исландия (Рейкьявик)')),
            ),
            TableCell(
              child: Text('Албания (Тирана)'),
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
              child: Text('Болгария (София)'),
            ),
            TableCell(
              child: Text('Румыния (Бухарест)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Финляндия (Хельсинки)'),
            ),
            TableCell(
              child: Text('Косово (Приштина)'),
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
              child: Text('Босния жана Герцеговина (Сараево)'),
            ),
          ],
        ),
      ],
    );
  }
}
