import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/components/hotel_components/like_container.dart';
import 'package:hotel_app/views/paid_page.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../bloc/hotel_bloc.dart';
import '../components/booking_components/hotel_detail.dart';
import '../components/custom_button.dart';
import '../exm.dart';
import '../exm2.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class ExampleMask {
  final TextEditingController textController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;

  ExampleMask(
      {required this.formatter,
      this.validator,
      required this.hint,
      required this.textInputType});
}

TextEditingController _emailController = TextEditingController();
bool _isValidEmail = true;

class _BookingPageState extends State<BookingPage> {
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

  final phoneNumber = ExampleMask(
      formatter: MaskTextInputFormatter(
        mask: "+# (###) ###-##-##",
        filter: <String, RegExp>{'#': RegExp(r'[7-8]')},
      ),
      hint: "+7 (***) ***-**-**",
      textInputType: TextInputType.phone);

  bool isFirstExpanded = true;
  bool isSecondExpanded = false;

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
              backgroundColor: Colors.white,
              toolbarHeight: 100,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              title: const Text(
                'Бронирование',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                            state.bookingModel.hotelName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.bookingModel.hotelAdress,
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
                      color: Colors.white,
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Информация о покупателе',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: phoneNumber.textController,
                            inputFormatters: [
                              const UpperCaseTextFormatter(),
                              phoneNumber.formatter
                            ],
                            autocorrect: false,
                            keyboardType: phoneNumber.textInputType,
                            autovalidateMode: AutovalidateMode.always,
                            validator: phoneNumber.validator,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xffF6F6F9), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xffF6F6F9),
                                  width: 2.0,
                                ),
                              ),
                              labelText: 'Номер телефона',
                              hintText: phoneNumber.hint,
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Color(0xffF6F6F9),
                              filled: true,
                              errorMaxLines: 1,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xffF6F6F9), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xffF6F6F9),
                                  width: 2.0,
                                ),
                              ),
                              labelText: "Почта",
                              hintText: "examplemail.000@mail.ru",
                              errorText:
                                  _isValidEmail ? null : 'Некорректный Email',
                              fillColor: Color(0xffF6F6F9),
                              filled: true,
                            ),
                            onChanged: (value) {
                              setState(() {
                                _isValidEmail = RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                    .hasMatch(value);
                              });
                            },
                          ),
                          const SizedBox(height: 8),
                          const Text(
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
                      color: Colors.white,
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
                            Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                      itemCount: tourists.length,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                            title: Text('Турист ${index + 1}:'),
                                            subtitle: Text(
                                                'Имя: ${tourists[index].name}, Паспорт: ${tourists[index].passport}'));
                                      }),
                                ),
                                Divider(),
                                Text('Добавить нового туриста:'),
                                TextField(
                                  controller: _nameController,
                                  decoration: InputDecoration(labelText: 'Имя'),
                                ),
                                TextField(
                                  controller: _passportController,
                                  decoration:
                                      InputDecoration(labelText: 'Паспорт'),
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
                            // ignore: avoid_unnecessary_containers
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
                                    onPressed: () {},
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SumResultsWidget(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 19),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Paid(),
                                )),
                            child:
                                const CustomButton(text: 'Оплатить 198 036 ₽'),
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

class SumResultsWidget extends StatelessWidget {
  const SumResultsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          final tourPrice = state.bookingModel.tourPrice;
          final fuelCharge = state.bookingModel.fuelCharge;
          final serviceCharge = state.bookingModel.serviceCharge;
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Топ',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${state.bookingModel.tourPrice} ₽ ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Топливный сбор',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${state.bookingModel.fuelCharge} ₽',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Сервисный сбор',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${state.bookingModel.serviceCharge} ₽',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'К оплате',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${tourPrice + fuelCharge + serviceCharge}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          );
        } else {
          throw ('invalid state');
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
