import 'package:education/model/biology_question.dart';

import 'package:education/pages/biology_test_page.dart';

import 'package:flutter/material.dart';

class Teeri1 extends StatelessWidget {
  const Teeri1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Teeri1'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff42d792),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
              ),
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => BiologyTestPage(
                      biologiaSuroo: surooJoop,
                    ),
                  ),
                );
              },
              child: const Text('ТЕСТ'),
            ),
          )
        ],
      ),
    );
  }
}
