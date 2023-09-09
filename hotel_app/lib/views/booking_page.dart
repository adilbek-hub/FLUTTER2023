import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/components/hotel_components/like_container.dart';

import '../bloc/hotel_bloc.dart';
import '../components/booking_components/hotel_detail.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool isFirstExpanded = true;
  bool isSecondExpanded = true;

  void toggleFirstExpansion() {
    setState(() {
      isFirstExpanded = !isFirstExpanded;
    });
  }

  void toggleSecondExpansion() {
    setState(() {
      isSecondExpanded = !isSecondExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          return Scaffold(
            backgroundColor: const Color(0xffF6F6F9),
            appBar: AppBar(
              backgroundColor: Colors.grey,
              toolbarHeight: 100,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              title: const Center(
                child: Text(
                  'Бронирование',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LikeContainer(),
                          const SizedBox(height: 8),
                          Text(
                            state.hotelModel.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.hotelModel.adress,
                            style: const TextStyle(
                              color: Color(0xff0D72FF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HotelDetails(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Информация о покупателе',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 20),
                          PhoneEmailWidget(
                            pronunciation: 'Номер Телефона',
                            pronunciationSpelling: '+7 (951) 555-99-00',
                          ),
                          SizedBox(height: 8),
                          PhoneEmailWidget(
                            pronunciation: 'Почта',
                            pronunciationSpelling: 'examplemail.000@mail.ru',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                            style: TextStyle(
                              color: Color(0xff828796),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Первый турист',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                child: Card(
                                  elevation: 2,
                                  color: const Color(0xffe7f1ff),
                                  child: IconButton(
                                    iconSize: 20,
                                    onPressed: toggleFirstExpansion,
                                    color: const Color(0xff0d72ff),
                                    icon: Icon(
                                      isFirstExpanded
                                          ? Icons.expand_less
                                          : Icons.expand_more,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          if (isFirstExpanded)
                            Container(
                              child: const Column(
                                children: [
                                  PhoneEmailWidget(
                                    pronunciation: 'Почта',
                                    pronunciationSpelling: 'Иван',
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Фамилия',
                                    pronunciationSpelling: 'Иванов',
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Дата рождения',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Гражданство',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Номер загранпаспорта',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation:
                                        'Срок действия загранпаспорта',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Второй турист',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                child: Card(
                                  elevation: 2,
                                  color: const Color(0xffe7f1ff),
                                  child: IconButton(
                                    iconSize: 20,
                                    onPressed: toggleSecondExpansion,
                                    color: const Color(0xff0d72ff),
                                    icon: Icon(
                                      isSecondExpanded
                                          ? Icons.expand_less
                                          : Icons.expand_more,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          if (isSecondExpanded)
                            Container(
                              child: const Column(
                                children: [
                                  PhoneEmailWidget(
                                    pronunciation: 'Почта',
                                    pronunciationSpelling: 'Дмитрий',
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Фамилия',
                                    pronunciationSpelling: 'Василеев',
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Дата рождения',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Гражданство',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation: 'Номер загранпаспорта',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                  PhoneEmailWidget(
                                    pronunciation:
                                        'Срок действия загранпаспорта',
                                    fontSize: 17,
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Добавить туриста',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                child: Card(
                                  elevation: 2,
                                  color: Colors.blue,
                                  child: IconButton(
                                    iconSize: 20,
                                    onPressed: toggleSecondExpansion,
                                    color: Colors.white,
                                    icon: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Топ',
                                    style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '186 600 ₽',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Топливный сбор',
                                    style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '9 300 ₽',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Сервисный сбор',
                                    style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '2 136 ₽',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'К оплате',
                                    style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '186 600 ₽',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Топ',
                                    style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '198 036 ₽',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return throw ('Есть инвалидность');
        }
      },
    );
  }
}

class PhoneEmailWidget extends StatelessWidget {
  const PhoneEmailWidget({
    Key? key,
    this.pronunciation = '',
    this.pronunciationSpelling = '',
    this.fontSize = 12.0,
  }) : super(key: key);
  final String? pronunciation;
  final String? pronunciationSpelling;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding:
            const EdgeInsets.only(left: 16.0, top: 10, right: 0, bottom: 10),
        decoration: BoxDecoration(
          color: const Color(0xffF6F6F9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$pronunciation',
              style: TextStyle(
                  color: const Color(0xffA9ABB7),
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              '$pronunciationSpelling',
              style: TextStyle(
                  color: const Color(0xff14142B),
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
