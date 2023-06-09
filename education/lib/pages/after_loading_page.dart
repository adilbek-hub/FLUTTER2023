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
                        text2: '40 темалар',
                        image: 'assets/images/capitals/geography.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Geography(),
                            ),
                          );
                        }),
                    const SubjectsCard(
                      color: Color(0xffAAF1CB),
                      text1: 'ТАРЫХ',
                      text2: '40 темалар',
                      image: 'assets/images/capitals/history.png',
                    ),
                    const SubjectsCard(
                      color: Color(0xffFFE99D),
                      text1: 'БИОЛОГИЯ',
                      text2: '40 темалар',
                      image: 'assets/images/capitals/biologe.png',
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
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
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
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
