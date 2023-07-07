import 'package:education/model/subjects.dart';
import 'package:education/pages/topic_pages_about_informatics/computer_funksialary.dart';
import 'package:education/pages/topic_pages_about_informatics/personal_computer.dart';
import 'package:education/pages/topic_pages_about_informatics/sistemalyk_programmalyk_kamsyzdoo.dart';
import 'package:flutter/material.dart';

import '../pages/topic_pages_about_informatics/computerdik_tarmaktar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  // const Example({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                ComputerFunksialary(computerStructur: computerStructurList),
                const ComputerdicTarmaktar(),
                const PersonalComputer(),
                const SistemalykProgrammalykKamsyzdoo(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 15,
              dotWidth: 15,
              spacing: 16,
              jumpScale: 3,
            ),
          ),
        ],
      ),
    );
  }
}
