import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/article.dart';

class CashedNetworkImage extends StatelessWidget {
  const CashedNetworkImage({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CachedNetworkImage(
        imageUrl: article.urlToImage ?? ApiConst.newsImage,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) =>
            Image.asset('assets/Без названия.png'),
      ),
    );
  }
}
