import 'package:flutter/material.dart';

class LoginRegisterWidget extends StatelessWidget {
  const LoginRegisterWidget({
    Key? key,
    required this.title,
    this.color,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Color? color;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: color ?? const Color.fromARGB(255, 151, 213, 245),
        fixedSize: const Size(250, 50),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
