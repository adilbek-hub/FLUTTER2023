import 'package:flutter/material.dart';
import 'package:step_03/model/article.dart';
import 'package:step_03/theme/text_style.dart';

class NewsDetailTitle extends StatelessWidget {
  const NewsDetailTitle({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.title,
      textAlign: TextAlign.center,
      style: AppTextStyle.newsDetailTitle,
    );
  }
}
