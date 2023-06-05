import 'package:flutter/material.dart';

import 'package:news_app/components/cashed_network_image.dart';
import 'package:news_app/components/detail_time.dart';
import 'package:news_app/components/to_site_button.dart';

import 'package:news_app/model/article.dart';
import 'package:share_plus/share_plus.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final Uri uri = Uri.parse(article.url!);
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
            CashedNetworkImage(article: article),
            Text(
              article.description.toString(),
              textAlign: TextAlign.center,
            ),
            if (article.url != null)
              ToSiteButton(uri: uri)
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}
