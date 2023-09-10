import 'package:flutter/material.dart';

import 'package:hotel_app/views/hotel_number_page.dart';

import '../custom_button.dart';

class ButtonArea extends StatelessWidget {
  const ButtonArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HotelNumber(),
                ),
              ),
              child: const CustomButton(text: 'К выбору номера'),
            ),
          ],
        ),
      ),
    );
  }
}
