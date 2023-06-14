import 'package:education/model/subjects.dart';
import 'package:education/topic_pages_about_geography/asia_continent.dart';
import 'package:education/topic_pages_about_geography/europe_continent.dart';
import 'package:education/topic_pages_about_geography/usa.dart';
import 'package:flutter/material.dart';

class GeographyTopics extends StatelessWidget {
  const GeographyTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjecstList.length,
        itemBuilder: (BuildContext context, int index) {
          Subjects subjects = subjecstList[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                if (subjects == borborShaarlar) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EuropeContinenti(
                        subjectsFull: subjects,
                      ),
                    ),
                  );
                } else if (subjects == usa) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Usa(),
                    ),
                  );
                } else if (subjects == asia) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AsiaContinenti(),
                    ),
                  );
                }
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: subjects.bgColor,
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
                          subjects.title,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              subjects.description,
                            ),
                          ),
                          Image.asset(
                            subjects.image,
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
