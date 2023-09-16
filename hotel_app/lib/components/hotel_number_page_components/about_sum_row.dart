import 'package:flutter/material.dart';

class AboutSumRow extends StatelessWidget {
  const AboutSumRow({
    Key? key,
    required this.price,
    required this.pricePer,
  }) : super(key: key);
  final String price;
  final String pricePer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        Text(
          pricePer,
          style: const TextStyle(
              color: Color(0xff828796),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
