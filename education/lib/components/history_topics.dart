import 'package:education/model/subjects.dart';

import 'package:education/topic_pages_about_geography/tema_1_h.dart';
import 'package:education/topic_pages_about_geography/tema_2_h.dart';
import 'package:education/topic_pages_about_geography/tema_3_h.dart';

import 'package:flutter/material.dart';

class HistoryTopics extends StatelessWidget {
  const HistoryTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                      builder: (context) => const Italia(),
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
