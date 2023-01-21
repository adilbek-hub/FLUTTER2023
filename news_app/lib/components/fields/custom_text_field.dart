import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.text,
    this.labelText,
    this.controller,
    required String? Function(String string) validator,
  }) : super(key: key);
  final String text;
  final String? labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: text,
          labelText: labelText),
    );
  }
}
