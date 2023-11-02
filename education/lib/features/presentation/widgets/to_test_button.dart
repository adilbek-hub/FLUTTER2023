import 'package:flutter/material.dart';

class ToTestButton extends StatelessWidget {
  const ToTestButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.text2,
  }) : super(key: key);
  final String text;
  final void Function() onPressed;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: Card(
        color: Colors.red[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff42d792),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                ),
                onPressed: onPressed,
                child: Text(text2),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
