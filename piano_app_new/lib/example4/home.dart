import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Piano4 extends StatefulWidget {
  const Piano4({super.key});

  @override
  State<Piano4> createState() => _Piano4State();
}

class _Piano4State extends State<Piano4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('do1.mp3'));
                  },
                ),
                const SizedBox(width: 10),
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('do1.mp3'));
                  },
                ),
                const SizedBox(width: 10),
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('fa4.mp3'));
                  },
                ),
                const SizedBox(width: 10),
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('lya6.mp3'));
                  },
                ),
                const SizedBox(width: 10),
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('re2.mp3'));
                  },
                ),
                const SizedBox(width: 10),
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('si7.mp3'));
                  },
                ),
                const SizedBox(width: 10),
                WhitePiano(
                  onTap: () {
                    AudioPlayer().play(AssetSource('sol5.mp3'));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WhitePiano extends StatelessWidget {
  const WhitePiano({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        width: 40,
        height: 30,
      ),
    );
  }
}
