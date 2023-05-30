import 'package:step_01/model/article.dart';

class TopNews {
  const TopNews(
      {required this.status,
      required this.totalResult,
      required this.articles});

  final String status;
  final int totalResult;
  final List<Article> articles;
}
