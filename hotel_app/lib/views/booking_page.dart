import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/components/controllers.dart';
import 'package:hotel_app/components/variables.dart';
import 'package:hotel_app/constants/app_text_styles.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:hotel_app/components/hotel_components/like_container.dart';
import 'package:hotel_app/views/paid_page.dart';
import '../bloc/hotel_bloc.dart';
import '../components/booking_components/hotel_detail.dart';
import '../components/booking_components/some_result_widget.dart';
import '../components/booking_components/text_forms_widget.dart';
import '../components/custom_button.dart';
import '../constants/app_colors.dart';
import '../exm.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

bool _isValidEmail = true;

class _BookingPageState extends State<BookingPage> {
  List<Widget> tourists = [];
  int touristCount = 0;

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
                key: controllers.formKey,
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
                              style: AppTextStyles.tStyle2,
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
                              style: AppTextStyles.tStyle1,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: variables.phoneNumber.textController,
                              inputFormatters: [
                                const UpperCaseTextFormatter(),
                                variables.phoneNumber.formatter
                              ],
                              autocorrect: false,
                              keyboardType: variables.phoneNumber.textInputType,
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
                                  borderSide: const BorderSide(
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
                                hintText: variables.phoneNumber.hint,
                                hintStyle:
                                    const TextStyle(color: AppColors.grey),
                                fillColor: AppColors.containerScreen,
                                filled: true,
                                errorMaxLines: 1,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: controllers.emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Пожалуйста введите электронную почту';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                      color: AppColors.containerScreen,
                                      width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.containerScreen,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: "Почта",
                                hintText: "examplemail.000@mail.ru",
                                errorText:
                                    _isValidEmail ? null : 'Некорректный Email',
                                fillColor: AppColors.containerScreen,
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
                              style: AppTextStyles.tStyle3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
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
                                                controller: controllers
                                                    .nameEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите свое имя';
                                                  }
                                                  return null;
                                                },
                                                labelText: 'Имя',
                                                hintText: 'Иван',
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .sureNameEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите свое фамилию';
                                                  }
                                                  return null;
                                                },
                                                labelText: 'Фамилия',
                                                hintText: 'Иванов',
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .birthdayEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Пожалуйста введите дата рождения';
                                                  }
                                                  return null;
                                                },
                                                labelText: 'Дата рождения',
                                                hintText: '01. 01. 2000',
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .passportNumberEditingController,
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
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .periodOfThePassportEditingController,
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
                                                isValidEmail: _isValidEmail,
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
                                  style: AppTextStyles.tStyle1,
                                ),
                                SizedBox(
                                  child: Card(
                                    elevation: 2,
                                    color: AppColors.blue,
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
                        color: AppColors.white,
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
                        color: AppColors.white,
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
                                  if (controllers.formKey.currentState!
                                      .validate()) {
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
}
