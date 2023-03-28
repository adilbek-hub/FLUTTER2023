import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  PianoWhiteButton(
    this.color,
    this.text, {
    super.key,
  });
  Color color;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2,
        top: 0,
        right: 2,
        bottom: 5,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => color,
            ),
            overlayColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.pressed)
                  ? Colors.transparent.withOpacity(0.2)
                  : Colors.white,
            )),
        onPressed: () {},
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
