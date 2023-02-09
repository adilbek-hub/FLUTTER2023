import 'package:flutter/material.dart';
import 'package:news_app_with_bloc/models/news_model.dart';

class NewsSuccessWidget extends StatelessWidget {
  const NewsSuccessWidget(
    this.news, {
    super.key,
  });
  final List<News> news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('СРОЧНОЕ'),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: news.length,
              itemBuilder: ((context, index) {
                final newsItem = news[index];
                return Card(
                  child: ListTile(
                    title: Text(newsItem.title),
                  ),
                );
              }))
        ],
      ),
    );
  }
}
