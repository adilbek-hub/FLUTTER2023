import 'package:flutter/material.dart';

class ButtonArea extends StatelessWidget {
  const ButtonArea({
    super.key,
  });

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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0d72ff),
                elevation: 0,
                padding: const EdgeInsets.only(
                    left: 16, top: 12, right: 16, bottom: 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                minimumSize: const Size(500, 40),
              ),
              onPressed: () {},
              child: const Text(
                'К выбору номеру',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
