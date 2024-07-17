import 'package:flutter/material.dart';

class FeaturedNewChooseButton extends StatelessWidget {
  const FeaturedNewChooseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 38,
        color: Colors.grey,
      ),
    );
  }
}
