import 'package:flutter/material.dart';

import 'package:hotel_app/model/hotel_model.dart';
import 'package:hotel_app/views/hotel_number_page.dart';

class ButtonArea extends StatelessWidget {
  const ButtonArea({
    Key? key,
    required this.hotelModel,
  }) : super(key: key);
  final HotelModel hotelModel;

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
                  builder: (context) => HotelNumber(hotelModel: hotelModel),
                ),
              ),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'К выбору номера',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
