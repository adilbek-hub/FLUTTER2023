import 'package:education/model/subjects.dart';

import 'package:education/pages/topic_pages_about_history/rim.dart';

import 'package:education/pages/topic_pages_about_history/bairky_germandyktar.dart';
import 'package:education/pages/topic_pages_about_history/italia_5_10_vek.dart';
import 'package:education/pages/topic_pages_about_informatics/computer_funksialary.dart';

import 'package:flutter/material.dart';

class InformaticaTopics extends StatelessWidget {
  const InformaticaTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjectsInformaticaList.length,
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
                      builder: (context) => const Germandyktar(),
                    ),
                  );
                } else if (subjectsI == computerTarmaktary) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Italia(),
                    ),
                  );
                } else if (subjectsI == spk) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Italia(),
                    ),
                  );
                }
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF101012),
                      offset: Offset(-12, 12),
                      blurRadius: 8,
                    ),
                  ],
                  color: subjectsI.bgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FittedBox(
                          child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.4),
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Text(
                          subjectsI.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              subjectsI.description,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                letterSpacing: 1.5,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(255, 255, 68, 0),
                                    blurRadius: 30,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(
                            subjectsI.image,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
