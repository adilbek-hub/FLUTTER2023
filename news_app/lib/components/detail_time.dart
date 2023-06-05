import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/model/article.dart';

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
        Text(
          DateFormat('d MMM, y, h:m').format(
            DateTime.parse(article.publishedAt),
          ),
        ),
      ],
    );
  }
}
