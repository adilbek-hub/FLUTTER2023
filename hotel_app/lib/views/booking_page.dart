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
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
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
                          NamePhoneEmailWidget(
                            pronunciation: 'Номер Телефона',
                            pronunciationSpelling: '+7 (951) 555-99-00',
                          ),
                          SizedBox(height: 8),
                          NamePhoneEmailWidget(
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
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 187, 212, 248),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(8, 12, 8, 10),
                                child: IconButton(
                                  onPressed: toggleExpansion,
                                  icon: Icon(
                                    isExpanded
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          if (isExpanded)
                            const NamePhoneEmailWidget(
                              pronunciation: 'Почта',
                              pronunciationSpelling: 'Иван',
                            ),
                          const SizedBox(height: 8),
                          const NamePhoneEmailWidget(
                            pronunciation: 'Фамилия',
                            pronunciationSpelling: 'Иванов',
                          ),
                          const SizedBox(height: 8),
                          const NamePhoneEmailWidget(
                            pronunciation: 'Дата рождения',
                            fontSize: 50.0,
                          ),
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

class NamePhoneEmailWidget extends StatelessWidget {
  const NamePhoneEmailWidget({
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
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 0, 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '$pronunciation',
                  style: const TextStyle(
                      color: Color(0xffA9ABB7),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '$pronunciationSpelling',
                  style: TextStyle(
                      color: const Color(0xff14142B),
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
