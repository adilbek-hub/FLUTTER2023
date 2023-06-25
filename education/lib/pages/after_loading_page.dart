import 'package:education/components/biologgy.dart';
import 'package:education/components/history.dart';
import 'package:education/components/history_topics.dart';
import 'package:education/components/subject_card.dart';
import 'package:education/components/geography.dart';

import 'package:flutter/material.dart';

class AfterLoading extends StatefulWidget {
  const AfterLoading({super.key});

  @override
  State<AfterLoading> createState() => _AfterLoadingState();
}

class _AfterLoadingState extends State<AfterLoading> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
          title: Center(
            child: Text(
              'Саламатсыңбы 😊'.toUpperCase(),
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/capitals/education.jpg'),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    const SubjectsCard(
                      color: Color(0xffFAADAD),
                      text1: 'МАТЕМАТИКА',
                      image: 'assets/images/capitals/mathimatic.png',
                      text2: 'ТЕМАЛАР 40',
                    ),
                    SubjectsCard(
                        color: const Color(0xffe4c9f9),
                        text1: 'ГЕОГРАФИЯ',
                        text2: '4 темалар',
                        image: 'assets/images/capitals/geography.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Geography(),
                            ),
                          );
                        }),
                    SubjectsCard(
                      color: const Color(0xffAAF1CB),
                      text1: 'ТАРЫХ',
                      text2: '40 темалар',
                      image: 'assets/images/capitals/history.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const History(),
                          ),
                        );
                      },
                    ),
                    SubjectsCard(
                      color: const Color(0xffFFE99D),
                      text1: 'БИОЛОГИЯ',
                      text2: '40 темалар',
                      image: 'assets/images/capitals/biologe.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Biologgy(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'МАТЕМАТИКА',
    'ГЕОГРАФИЯ',
    'ТАРЫХ',
    'БИОЛОГИЯ',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var subject in searchTerms) {
      if (subject.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(subject);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var subject in searchTerms) {
      if (subject.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(subject);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return InkWell(
            onTap: () {
              if (result == searchTerms[1]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Geography(),
                  ),
                );
              } else if (result == searchTerms[2]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const History(),
                  ),
                );
              } else if (result == searchTerms[3]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Biologgy(),
                  ),
                );
              }
            },
            child: ListTile(
              title: Text(result),
            ),
          );
        });
  }
}
