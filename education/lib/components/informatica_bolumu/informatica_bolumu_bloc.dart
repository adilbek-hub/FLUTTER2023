import 'package:cached_network_image/cached_network_image.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/pages/topic_pages_about_informatics/computer_funksialary.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/subjects2.dart';

/*
 if (subjects2Text[index] == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ComputerFunksialary(
                            computerStructur: ,
                          ),
                        ),
                      );
                      // ignore: unrelated_type_equality_checks
                    } else if (subjectsInformaticaList == personalComputer) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PersonalComputer(),
                        ),
                      );
                      // ignore: unrelated_type_equality_checks
                    } else if (subjectsInformaticaList == computerTarmaktary) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComputerdicTarmaktar(),
                        ),
                      );
                      // ignore: unrelated_type_equality_checks
                    } else if (subjectsInformaticaList == spk) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SistemalykProgrammalykKamsyzdoo(),
                        ),
                      );
                    }
 */
class InformaticaBolumuWidget extends StatelessWidget {
  const InformaticaBolumuWidget({
    super.key,
    required PageController pageController,
    required this.informaticaTopics,
  }) : _pageController = pageController;

  final PageController _pageController;
  final InformaticaTopics informaticaTopics;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            controller: _pageController,
            itemCount: informaticaTopics.informatica.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final topics = informaticaTopics.informatica[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ComputerFunksialary(
                            informatica: informaticaTopics,
                          );
                        },
                      ),
                    );
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
                            DropCapText(topics.title,
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff47455f),
                                    fontWeight: FontWeight.w900),
                                textAlign: TextAlign.left,
                                dropCap: DropCap(
                                  width: 100,
                                  height: 100,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://cdn3d.iconscout.com/3d/free/thumb/free-flutter-5562357-4642761.png?f=webp',
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                )),
                            const Divider(),
                            Text(
                              topics.description,
                              style: const TextStyle(fontSize: 18),
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
          count: informaticaTopics.informatica.length,
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
