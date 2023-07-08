import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/model/subjects.dart';
import 'package:education/pages/topic_pages_about_history/nemis_koroldugu.dart';

import 'package:education/pages/topic_pages_about_history/rim.dart';
import 'package:education/pages/topic_pages_about_history/bairky_germandyktar.dart';
import 'package:education/pages/topic_pages_about_history/italia_5_10_vek.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HistoryTopics extends StatelessWidget {
  HistoryTopics({super.key});
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: subjectsHistoryList.length,
            itemBuilder: (BuildContext context, int index) {
              Subjects subjectsH = subjectsHistoryList[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    if (subjectsH == roma) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Rim(),
                        ),
                      );
                    } else if (subjectsH == germandyktar) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Germandyktar(),
                        ),
                      );
                    } else if (subjectsH == italia) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Italia(),
                        ),
                      );
                    } else if (subjectsH == nemisKoroldugu) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NemisKoroldugu(),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropCapText(
                              subjectsH.title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  // fontFamily: 'Knewave-Regular',
                                  color: Color(0xff47455f),
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              dropCap: DropCap(
                                width: 100,
                                height: 100,
                                child: Image.asset(subjectsH.image),
                              ),
                            ),
                            const Divider(),
                            Text(
                              subjectsH.description,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Avenir',
                                  color: Color.fromARGB(255, 186, 148, 148),
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.left,
                            ),
                          ],
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
