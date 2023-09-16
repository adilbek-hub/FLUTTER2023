import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/constants/app_text_styles.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:hotel_app/components/hotel_components/like_container.dart';
import 'package:hotel_app/views/paid_page.dart';
import '../bloc/hotel_bloc.dart';
import '../components/booking_components/hotel_detail.dart';
import '../components/custom_button.dart';
import '../exm.dart';

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
  List<Widget> tourists = [];
  int touristCount = 0;

  void addTourist() {
    setState(() {
      touristCount++;
      if (touristCount == 1) {
        tourists.add(
          const Column(
            children: [
              Row(
                children: [
                  Text(
                    'Первый турист',
                    style: AppTextStyles.tStyle1,
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (touristCount == 2) {
        tourists.add(
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Второй турист',
                    style: AppTextStyles.tStyle1,
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (touristCount == 3) {
        tourists.add(
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Третий турист',
                style: AppTextStyles.tStyle1,
              ),
            ],
          ),
        );
      }
    });
  }

  final nameEditingController = TextEditingController();
  final sureNameEditingController = TextEditingController();
  final birthdayEditingController = TextEditingController();
  final citizenshipEditingController = TextEditingController();
  final passportNumberEditingController = TextEditingController();
  final periodOfThePassportEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final phoneNumber = ExampleMask(
      formatter: MaskTextInputFormatter(
        mask: "+# (###) ###-##-##",
        filter: <String, RegExp>{'#': RegExp(r'[0-9]')},
      ),
      hint: "+7 (***) ***-**-**",
      textInputType: TextInputType.phone);

  bool isFirstExpanded = true;
  bool isSecondExpanded = false;
  bool isAddTourist = false;

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

  void toggleAddTuorist() {
    setState(() {
      isAddTourist = !isAddTourist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          final tourPrice = state.bookingModel.tourPrice;
          final fuelCharge = state.bookingModel.fuelCharge;
          final serviceCharge = state.bookingModel.serviceCharge;
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
                style: AppTextStyles.viewNamesStyle,
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                              style: AppTextStyles.tStyle1,
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
                              // autovalidateMode: AutovalidateMode.always,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Пожалуйста введите номер телефона';
                                }
                                return null;
                              },
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Пожалуйста введите электронную почту';
                                }
                                return null;
                              },
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
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 200,
                              child: ListView(
                                children: [
                                  for (var tourist in tourists)
                                    ExpansionTile(
                                      title: tourist,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              TextForms(
                                                controller:
                                                    nameEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите свое имя';
                                                  }
                                                  return null;
                                                },
                                                labelText: 'Имя',
                                                hintText: 'Иван',
                                              ),
                                              TextForms(
                                                controller:
                                                    sureNameEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите свое фамилию';
                                                  }
                                                  return null;
                                                },
                                                labelText: 'Фамилия',
                                                hintText: 'Иванов',
                                              ),
                                              TextForms(
                                                controller:
                                                    birthdayEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите дата рождения';
                                                  }
                                                  return null;
                                                },
                                                labelText: 'Дата рождения',
                                                hintText: '01. 01. 2000',
                                              ),
                                              TextForms(
                                                controller:
                                                    passportNumberEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите номер паспорта';
                                                  }
                                                  return null;
                                                },
                                                labelText:
                                                    'Номер загранпаспорта',
                                                hintText: '6023232322323323',
                                              ),
                                              TextForms(
                                                controller:
                                                    periodOfThePassportEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите срок действий паспорта';
                                                  }
                                                  return null;
                                                },
                                                labelText:
                                                    'Срок действия загранпаспорта',
                                                hintText: '20. 01. 2033',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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
                                      onPressed: () => addTourist(),
                                      icon: const Icon(Icons.add),
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
                              child: CustomButton(
                                text:
                                    'Оплатить ${tourPrice + fuelCharge + serviceCharge}',
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return const Paid();
                                      }),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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

class TextForms extends StatefulWidget {
  const TextForms({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.validator,
  }) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;

  @override
  State<TextForms> createState() => _TextFormsState();
}

class _TextFormsState extends State<TextForms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color(0xffF6F6F9), width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Color(0xffF6F6F9),
              width: 2.0,
            ),
          ),
          labelText: widget.labelText,
          hintText: widget.hintText,
          errorText: _isValidEmail ? null : 'Некорректный Email',
          fillColor: const Color(0xffF6F6F9),
          filled: true,
        ),
      ),
    );
  }
}
