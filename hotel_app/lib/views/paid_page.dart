import 'package:flutter/material.dart';

import 'booking_page.dart';

class Paid extends StatelessWidget {
  const Paid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            'Заказ оплачен',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
            vertical: 28,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Column(
                  children: [
                    Container(
                      width: 94,
                      height: 94,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF6F6F9),
                      ),
                      child: Image.asset(
                        'assets/flawer.png',
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Ваш заказ принят в работу',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                      style: TextStyle(
                        color: Color(0xff828796),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const CustomButton(
                text: 'Супер!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
