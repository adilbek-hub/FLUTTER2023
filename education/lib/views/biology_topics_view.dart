import 'package:education/model/subjects.dart';
import 'package:education/pages/topic_pages_about_biology/kishsi_jana_janybar.dart';
import 'package:education/pages/topic_pages_about_biology/kletka.dart';
import 'package:education/pages/topic_pages_about_biology/mee.dart';
import 'package:education/pages/topic_pages_about_biology/nerv_sistemasy.dart';
import 'package:flutter/material.dart';

class BiologyTopics extends StatelessWidget {
  const BiologyTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjectsBiologyList.length,
        itemBuilder: (BuildContext context, int index) {
          Subjects subjectsB = subjectsBiologyList[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                if (subjectsB == manAndanimal) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KishiJanaJanybar(),
                    ),
                  );
                } else if (subjectsB == kletka) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Kletka(),
                    ),
                  );
                } else if (subjectsB == nervSistemasy) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NervSistemasy(),
                    ),
                  );
                } else if (subjectsB == mee) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Mee(),
                    ),
                  );
                }
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: subjectsB.bgColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 5, right: 8),
                  child: Column(
                    children: [
                      Text(
                        subjectsB.title,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              subjectsB.description,
                            ),
                          ),
                          Image.asset(
                            subjectsB.image,
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
