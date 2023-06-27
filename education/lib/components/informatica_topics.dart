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
                  color: subjectsI.bgColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Text(
                          subjectsI.title,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              subjectsI.description,
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
