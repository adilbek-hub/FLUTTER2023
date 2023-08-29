import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/subjects.dart';
import '../../model/subjects2.dart';
import '../../pages/topic_pages_about_informatics/computer_funksialary.dart';
import '../../pages/topic_pages_about_informatics/computerdik_tarmaktar.dart';
import '../../pages/topic_pages_about_informatics/personal_computer.dart';
import '../../pages/topic_pages_about_informatics/sistemalyk_programmalyk_kamsyzdoo.dart';

class InformaticaBolumuWidget extends StatelessWidget {
  const InformaticaBolumuWidget({
    super.key,
    required PageController pageController,
    required this.subjects2Text,
  }) : _pageController = pageController;

  final PageController _pageController;
  final Computer subjects2Text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            controller: _pageController,
            itemCount: subjects2Text.one.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final subject = subjects2Text.one[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    // ignore: unrelated_type_equality_checks
                    // if (subjects2Text[index] == 0) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ComputerFunksialary(
                    //         computerStructur: computerStructurList,
                    //       ),
                    //     ),
                    //   );
                    //   // ignore: unrelated_type_equality_checks
                    // } else if (subjectsInformaticaList == personalComputer) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const PersonalComputer(),
                    //     ),
                    //   );
                    //   // ignore: unrelated_type_equality_checks
                    // } else if (subjectsInformaticaList == computerTarmaktary) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const ComputerdicTarmaktar(),
                    //     ),
                    //   );
                    //   // ignore: unrelated_type_equality_checks
                    // } else if (subjectsInformaticaList == spk) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) =>
                    //           const SistemalykProgrammalykKamsyzdoo(),
                    //     ),
                    //   );
                    // }
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
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15),
                            DropCapText(
                              subject.title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff47455f),
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              dropCap: DropCap(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                  subject.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Divider(),
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
