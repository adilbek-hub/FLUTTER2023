import 'package:education/constants/app_text.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/continent.dart';
import 'package:education/pages/test_page.dart';
import 'package:flutter/material.dart';
import '../components/continents_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          title: const Text(
            AppText.gameTitle,
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: AppColors.blue,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )),
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            const Divider(
              height: 1,
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(14),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: continentList.length,
                  itemBuilder: (contex, index) {
                    return ContinentCard(
                        itemContinents: continentList[index],
                        onTap: () {
                          if (continentList[index].suroo != null) {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    EuropeTestPage(
                                  suroo: continentList[index].suroo!,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Сиз тандаган континент туура эмес'),
                            ));
                          }
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
