import 'package:education/components/subject_card.dart';
import 'package:education/pages/geography.dart';
import 'package:flutter/material.dart';

class AfterLoading extends StatefulWidget {
  const AfterLoading({super.key});

  @override
  State<AfterLoading> createState() => _AfterLoadingState();
}

class _AfterLoadingState extends State<AfterLoading> {
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Саламатсыңбы, Кутман таң 😊'.toUpperCase(),
            style: const TextStyle(fontSize: 15, color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: SizedBox(
                width: 320,
                height: 53,
                child: TextField(
                  cursorColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      searchText = value;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'издөө...',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
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
    );
  }
}
