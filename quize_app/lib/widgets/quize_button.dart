import 'package:flutter/material.dart';

class QuizeButton extends StatelessWidget {
  const QuizeButton(this.isTrue, {Key? key, required this.onPressed})
      : super(key: key);
  final bool isTrue;
  final void Function(bool) onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 37,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: isTrue ? Colors.green : Colors.red),
            onPressed: () => onPressed(isTrue),
            child: Text(
              isTrue ? 'Туура' : 'Туура эмес',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )));
  }
}
