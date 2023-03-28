import 'package:flutter/material.dart';
import 'package:piano_app_new/components/piano_button.dart';
import 'package:piano_app_new/theme/app_colors.dart';

class PianoApp extends StatefulWidget {
  const PianoApp({super.key});

  @override
  State<PianoApp> createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
  Color _iconColor = Colors.blue;

  void _onPressed() {
    setState(() {
      _iconColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PianoApp'),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.black,
            ),
          ),
          Expanded(
              flex: 2,
              child: Stack(children: [
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 11,
                    itemBuilder: (context, index) {
                      return PianoWhiteButton(Colors.white, 're');
                    }),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        return PianoWhiteButton(Colors.black, 'do');
                      }),
                ),
              ])),
        ],
      ),
    );
  }
}
