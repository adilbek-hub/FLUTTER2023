import 'package:education/model/subjects.dart';
import 'topic_pages_about_biology/topic_pages_about_biology.dart';
import 'topic_pages_about_geography/topic_pages_about_geography.dart';
import 'package:education/pages/topic_pages_about_geography/world_capitals.dart';
import 'package:education/pages/topic_pages_about_history/bairky_germandyktar.dart';
import 'package:education/pages/topic_pages_about_history/italia_5_10_vek.dart';
import 'package:education/pages/topic_pages_about_history/nemis_koroldugu.dart';
import 'package:education/pages/topic_pages_about_history/rim.dart';
import 'package:education/pages/topic_pages_about_informatics/computerdik_tarmaktar.dart';
import 'package:education/pages/topic_pages_about_informatics/personal_computer.dart';
import 'package:education/pages/topic_pages_about_informatics/sistemalyk_programmalyk_kamsyzdoo.dart';
import 'package:flutter/material.dart';

class AllSearchPage extends StatefulWidget {
  const AllSearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AllSearchPageState createState() => _AllSearchPageState();
}

class _AllSearchPageState extends State<AllSearchPage> {
  List<String> temalar = [
    "Европа өлкөлөрүнүн борбор шаарлары",
    "Америка Кошмо Штаттары",
    "Азия континенти",
    "Борбор шаарлар",
    "Кишинин сүт эмүүчү жаныбарлар менен окшоштугу жана айырмачылыгы",
    "Клетка жөнүндө түшүнүк",
    "Нерв системасынын түзүлүшү жана анын кызматы",
    "Mee",
    "Рим империясы",
    "Байыркы Германдыктар",
    "Италия V X кылымдарда",
    "Немис королдугунун жаралышы",
    "Компьютердин негизги бөлүктөрү жана алардын функциялары",
    "Personal",
    "Компьютердик тармактар",
    "Системалык программалык камсыздоо",
  ];

  List<String> searchResults = [];

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      setState(() {
        searchResults = [];
      });
    } else {
      setState(() {
        searchResults = temalar
            .where((text) => text.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  void openTopicPage(String topic) {
    switch (topic) {
      case "Европа өлкөлөрүнүн борбор шаарлары":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const EuropeContinenti(subjectsFull: borborShaarlar),
          ),
        );
        break;
      case "Америка Кошмо Штаттары":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Usa()),
        );
        break;
      case "Борбор шаарлар":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WorldCapitals()),
        );
        break;
      case "Кишинин сүт эмүүчү жаныбарлар менен окшоштугу жана айырмачылыгы":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const KishiJanaJanybar()),
        );
        break;
      case "Клетка жөнүндө түшүнүк":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Kletka()),
        );
        break;
      case "Нерв системасынын түзүлүшү жана анын кызматы":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NervSistemasy()),
        );
        break;
      case "Mee":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Mee()),
        );
        break;
      case "Рим империясы":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Rim()),
        );
        break;
      case "Байыркы Германдыктар":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Germandyktar()),
        );
        break;
      case "Италия V X кылымдарда":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Italia()),
        );
        break;
      case "Немис королдугунун жаралышы":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NemisKoroldugu()),
        );
        break;
      case "Personal":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PersonalComputer()),
        );
        break;
      case "Компьютердик тармактар":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ComputerdicTarmaktar()),
        );
        break;
      case "Системалык программалык камсыздоо":
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const SistemalykProgrammalykKamsyzdoo()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тема издөө бөлүмү'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterSearchResults,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.isNotEmpty
                  ? searchResults.length
                  : temalar.length,
              itemBuilder: (context, index) {
                final topic = searchResults.isNotEmpty
                    ? searchResults[index]
                    : temalar[index];
                return ListTile(
                  title: Text(topic),
                  leading: const Icon(Icons.search),
                  onTap: () {
                    openTopicPage(topic);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
