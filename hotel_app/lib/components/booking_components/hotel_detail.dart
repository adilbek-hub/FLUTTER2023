import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(children: const [
      TableRow(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Вылет из',
            style: TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          'Санкт-Петербург',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Страна, город',
            style: TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          'Египет, Хургада',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Даты',
            style: TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          '19.09.2023 – 27.09.2023',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Кол-во ночей',
            style: TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          '7 ночей',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Отель',
            style: TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          'Steigenberger Makadi',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
      TableRow(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Text(
              'Номер',
              style: TextStyle(
                color: Color(0xff828796),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            'Стандартный с видом на бассейн или сад',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      TableRow(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Питание',
            style: TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          'Все включено',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
    ]);
  }
}
