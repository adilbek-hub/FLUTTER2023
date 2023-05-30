import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:step_04/components/news_card.dart';
import 'package:step_04/constants/api_constants.dart';
import 'package:step_04/constants/country_code.dart';
// import 'paage:step_04/services/fetch_service.dart';

import 'package:step_04/model/top_news.dart';
import 'package:step_04/services/fetch_service.dart';
import 'package:step_04/theme/colors.dart';

import 'package:step_04/theme/text_style.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  // 8.1 maindartta
  TopNews? topNews;

  //home_viewda bir metod bolsul al fetchNews metodu bolsun. Bul asinhronniy bolsun anan Future<void> bolsun.
  Future<void> fetchNews([String? domain]) async {
    /*Бул эмне кызмат аткарып жатат агай? */
    topNews = null; /*?????????? */
    setState(() {});
    // TopNews nulalibl kaytarat! topNewska TopNewsRepo().fetchTopNews(); барабарланды.
    // Жогорудан келген domen
    topNews = await TopNewsRepo().fetchTopNews(domain);
// Барабарлагандан кийин setState кылып коёбуз.
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: const Text(AppText.topNewsAppBarTitle),
        // actions: [
        //   PopupMenuButton<Country>(
        //     // Тандаганда
        //     onSelected: (Country item) async {
        //       // күтүп туруп үстүдөгү itemдин domenин берсин
        //       await fetchNews(item.domen);
        //     },
        //     itemBuilder: (BuildContext context) {
        //       return countriesSet
        //           // map методу ар бир элементти бирден берет.
        //           .map(
        //             // Элементти алганда PopupMenuItem виджетин кайтарасың ал виджеттин тиби биздин Country.
        //             (e) => PopupMenuItem<Country>(
        //               // e тиби Country. Значит Countryде эмне болсо ошону ал.
        //               value: e,
        //               // Текст дагы жаз. Эмнени жазат? (e.name => Сага келген Countryнин текстин жаз)
        //               child: Text(e.name),
        //             ),
        //           )
        //           // Биз берген PopupMenuItem<Country> виджети бирден список кайтарат ошондуктан баарын
        //           // бир лист кылып топтоп лист кылып кой.
        //           .toList();
        //     },
        //   ),
        // ],
        actions: [
          PopupMenuButton<Country>(onSelected: (Country item) {
            fetchNews(item.domain);
          }, itemBuilder: (BuildContext context) {
            return countries
                .map((e) =>
                    PopupMenuItem<Country>(value: e, child: Text(e.name)))
                .toList();
          })
        ],
      ),
      // topNews nullga true bolso anda zagruzkany korsotup tura ber.
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          // Эгер андай болбосо =>
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: ((context, index) {
                final news = topNews!.articles[index];
                return NewsCard(news: news);
              }),
            ),
      // Жаңылык издөө үчүн бир иконка
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primary,
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
    );
  }
}
