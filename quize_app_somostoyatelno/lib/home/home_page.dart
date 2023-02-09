import 'package:flutter/material.dart';

import 'package:quize_app_somostoyatelno/model.dart';
import 'package:quize_app_somostoyatelno/theme/app_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJoop = <bool>[];
  List kataJoop = <bool>[];
  void teksher(bool value) {
    if (surooJoop[index].joop == value) {
      jooptor.add(true);
      tuuraJoop.add(true);
    } else {
      jooptor.add(false);
      kataJoop.add(false);
    }
    setState(() {
      if (surooJoop[index] == surooJoop.last) {
        showDialog(
            context: context,
            builder: ((context) {
              return AlertDialog(
                title: const Text('Sizdin Joobunuz'),
                content: Text(
                    'Tuura ${tuuraJoop.length} Kata Joop ${kataJoop.length}'),
              );
            }));
        index = 0;

        jooptor.clear();
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Тапшырма 07',
          style: TextStyle(
              color: AppColors.textColors, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              surooJoop[index].suroo,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const Spacer(),
            QuizeButton(
                isTrue: true,
                onPressed: ((value) {
                  teksher(value);
                })),
            const SizedBox(
              height: 10,
            ),
            QuizeButton(
              isTrue: false,
              onPressed: ((value) {
                teksher(value);
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 20,
              child: ListView.builder(
                  itemCount: jooptor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return jooptor[index]
                        ? const IconResult(isTrue: true)
                        : const IconResult(isTrue: false);
                  })),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}

class IconResult extends StatelessWidget {
  const IconResult({
    Key? key,
    required this.isTrue,
  }) : super(key: key);
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Icon(isTrue ? Icons.check : Icons.close,
        color: isTrue ? Colors.green : Colors.red);
  }
}

class QuizeButton extends StatelessWidget {
  const QuizeButton({
    Key? key,
    required this.isTrue,
    required this.onPressed,
  }) : super(key: key);
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
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
