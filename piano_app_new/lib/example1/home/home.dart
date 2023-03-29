import 'package:flutter/material.dart';
import 'package:piano_app_new/example1/components/piano_button.dart';

import 'package:piano_app_new/example1/theme/app_colors.dart';

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
            child: Container(),
          ),
          Expanded(
              flex: 3,
              child: Stack(children: [
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 11,
                    itemBuilder: (context, index) {
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
                                (states) => Colors.white,
                              ),
                              overlayColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    states.contains(MaterialState.pressed)
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
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        return const PianoWhiteButton();
                      }),
                ),
              ])),
        ],
      ),
    );
  }
}
