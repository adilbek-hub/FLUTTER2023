import 'package:education/model/subjects.dart';
import 'package:education/topic_pages_about_geography/teeri_1.dart';
import 'package:education/topic_pages_about_geography/teeri_2.dart';
import 'package:education/topic_pages_about_geography/teeri_3.dart';
import 'package:flutter/material.dart';

class BiologyTopics extends StatelessWidget {
  const BiologyTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjectsBiology.length,
        itemBuilder: (BuildContext context, int index) {
          SubjectsHistory subjectsB = subjectsBiology[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                if (subjectsB == teeriler1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Teeri1(),
                    ),
                  );
                } else if (subjectsB == teeriler2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Teeri2(),
                    ),
                  );
                } else if (subjectsB == teeriler3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Teeri3(),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        subjectsB.title,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
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
