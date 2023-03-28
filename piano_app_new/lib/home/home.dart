import 'package:flutter/material.dart';
import 'package:piano_app_new/theme/app_colors.dart';

class PianoApp extends StatefulWidget {
  const PianoApp({super.key});

  @override
  State<PianoApp> createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
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
              child: ListView.builder(
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.only(bottom: 20),
                        ),
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'do',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
