import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/countries.dart';
import 'package:news_app/model/top_news.dart';
import 'package:news_app/services/fetch_service.dart';
import 'package:news_app/view/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await TopNewsRepo().fetchTopNews(domain);
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
        backgroundColor: const Color(0xffFE5722),
        title: const Text(
          'News Agregator',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton<Countries>(
              color: Colors.orange,
              onSelected: (Countries item) async {
                await fetchNews(item.domain);
                setState(() {});
              },
              itemBuilder: (BuildContext context) {
                return countriesSet
                    .map(
                      (e) => PopupMenuItem<Countries>(
                        value: e,
                        child: Text(e.name),
                      ),
                    )
                    .toList();
              })
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => DetailView(
                          article: news,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          // child: Image.network(
                          //   news!.urlToImage ?? ApiConst.newsImage,
                          // ),
                          child: CachedNetworkImage(
                            imageUrl: news!.urlToImage ?? ApiConst.newsImage,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Image.asset('assets/Без названия.png'),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(news.title.toString()),
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
