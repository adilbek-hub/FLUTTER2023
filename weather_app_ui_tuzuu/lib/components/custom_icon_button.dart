import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        iconSize: 40,
        icon: Icon(
          icon,
          color: Colors.white,
        ));
  }
}
