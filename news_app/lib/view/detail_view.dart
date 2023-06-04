import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/article.dart';
import 'package:share_plus/share_plus.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(article.title),
        actions: article.url != null
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(article.url!);
                  },
                  icon: const Icon(Icons.share),
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              article.title,
              overflow: TextOverflow.ellipsis,
            ),
            const Divider(),
            DetailTime(article: article),
            const SizedBox(height: 20),
            Expanded(
              child: CachedNetworkImage(
                imageUrl: article.urlToImage ?? ApiConst.newsImage,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/Без названия.png'),
              ),
            ),
            // const SizedBox(height: 10),
            Text(
              article.description.toString(),
              textAlign: TextAlign.center,
            ),
            // const SizedBox(height: 30),
            MaterialButton(
              color: Colors.orangeAccent,
              onPressed: () {},
              child: const Text('Толук окуу'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailTime extends StatelessWidget {
  const DetailTime({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.access_time),
        const SizedBox(width: 10),
        Text(article.publishedAt),
      ],
    );
  }
}
