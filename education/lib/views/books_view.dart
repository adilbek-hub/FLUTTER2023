import 'package:education/bloc/education_bloc.dart';
import 'package:education/components/biology_bolumu/biologgy.dart';
import 'package:education/components/history_bolumu/history.dart';
import 'package:education/components/informatica_bolumu/informatica.dart';
import 'package:education/components/subject_card.dart';
import 'package:education/components/geography_bolumu/geography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksView extends StatefulWidget {
  const BooksView({super.key});

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const BackButton(
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
          ],
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
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Китептер \nКоллекциясы',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              BlocBuilder<EducationBloc, EducationState>(
                  builder: (context, state) {
                if (state is EducationLoading) {
                  return const CupertinoActivityIndicator(color: Colors.blue);
                } else if (state is EducationError) {
                  return Text(state.text);
                } else if (state is EducationSuccess) {
                  return Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      padding: const EdgeInsets.all(16),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        SubjectsCard(
                          color: const Color(0xffFAADAD),
                          text1: state.subjectsTopicsModel[0].name,
                          image: state.subjectsTopicsModel[0].image,
                          text2: state.subjectsTopicsModel[0].title,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Informatica(),
                            ),
                          ),
                        ),
                        SubjectsCard(
                            color: const Color(0xffe4c9f9),
                            text1: state.subjectsTopicsModel[1].name,
                            image: state.subjectsTopicsModel[1].image,
                            text2: state.subjectsTopicsModel[1].title,
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
                          text1: state.subjectsTopicsModel[2].name,
                          image: state.subjectsTopicsModel[2].image,
                          text2: state.subjectsTopicsModel[2].title,
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
                          text1: state.subjectsTopicsModel[3].name,
                          image: state.subjectsTopicsModel[3].image,
                          text2: state.subjectsTopicsModel[3].title,
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
                  );
                } else {
                  throw ('Error in $state');
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'ИНФОРМАТИКА',
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
              if (result == searchTerms[0]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Informatica(),
                  ),
                );
              } else if (result == searchTerms[1]) {
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
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/sear_avatar/book.jpg'),
                ),
                title: Text(
                  result,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: const Text(
                  'Билим алуу ийне менен кудук казгандай.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: const Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          );
        });
  }
}
