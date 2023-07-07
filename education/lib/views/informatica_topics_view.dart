import 'package:education/model/subjects.dart';
import 'package:education/pages/topic_pages_about_informatics/computer_funksialary.dart';
import 'package:education/pages/topic_pages_about_informatics/computerdik_tarmaktar.dart';
import 'package:education/pages/topic_pages_about_informatics/personal_computer.dart';
import 'package:education/pages/topic_pages_about_informatics/sistemalyk_programmalyk_kamsyzdoo.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InformaticaTopics extends StatelessWidget {
  InformaticaTopics({super.key});
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 380,
          child: PageView.builder(
            controller: _pageController,
            itemCount: subjectsInformaticaList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              Subjects subjectsI = subjectsInformaticaList[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    if (subjectsI == computer) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ComputerFunksialary(
                            computerStructur: computerStructurList,
                          ),
                        ),
                      );
                    } else if (subjectsI == personalComputer) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PersonalComputer(),
                        ),
                      );
                    } else if (subjectsI == computerTarmaktary) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComputerdicTarmaktar(),
                        ),
                      );
                    } else if (subjectsI == spk) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SistemalykProgrammalykKamsyzdoo(),
                        ),
                      );
                    }
                  },
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 215, 227, 226),
                            offset: Offset(-12, 12),
                            blurRadius: 8,
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 184, 243, 235),
                            Color.fromARGB(255, 254, 242, 242)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: subjectsInformaticaList.length,
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
    );
  }
}
