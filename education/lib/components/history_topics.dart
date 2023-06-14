import 'package:education/model/subjects.dart';
import 'package:education/topic_pages_about_geography/Tema_1_h.dart';
import 'package:education/topic_pages_about_geography/asia_continent.dart';
import 'package:education/topic_pages_about_geography/europe_continent.dart';
import 'package:education/topic_pages_about_geography/tema_2_h.dart';
import 'package:education/topic_pages_about_geography/tema_3_h.dart';
import 'package:education/topic_pages_about_geography/usa.dart';
import 'package:flutter/material.dart';

class HistoryTopics extends StatelessWidget {
  const HistoryTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjectsHistory.length,
        itemBuilder: (BuildContext context, int index) {
          SubjectsHistory subjectsH = subjectsHistory[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                if (subjectsH == tema1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TemaH1(),
                    ),
                  );
                } else if (subjectsH == tema2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TemaH2(),
                    ),
                  );
                } else if (subjectsH == tema3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TemaH3(),
                    ),
                  );
                }
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: subjectsH.bgColor, //butur
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
                        subjectsH.title,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              subjectsH.description,
                            ),
                          ),
                          Image.asset(
                            subjectsH.image,
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
