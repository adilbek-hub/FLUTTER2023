import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    Key? key,
    required this.errorText,
  }) : super(key: key);
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorText));
  }
}
