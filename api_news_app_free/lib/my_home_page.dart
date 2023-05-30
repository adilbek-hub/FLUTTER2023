import 'package:api_news_app_free/api_const.dart';
import 'package:api_news_app_free/model/top_news.dart';
import 'package:api_news_app_free/service.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TopNews? topNew;
  Future<void> fetchNews() async {
    topNew = await TopNewsRepo().fetchData();
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
        centerTitle: true,
        title: const Text('MyHomePage'),
      ),
      body: topNew == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNew!.article.length,
              itemBuilder: (context, index) {
                final news = topNew!.article[index];
                return Card(
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.network(
                          news.urlToImage ?? ApiConst.newsImage,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(news.title),
                      ),
                    ],
                  ),
                );
              }),
    );
  }
}
