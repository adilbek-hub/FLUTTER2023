import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({super.key});

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
              (states) => Colors.black,
            ),
            overlayColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.pressed)
                  ? Colors.transparent.withOpacity(0.2)
                  : Colors.white,
            )),
        onPressed: () {},
        child: const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              'do',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
