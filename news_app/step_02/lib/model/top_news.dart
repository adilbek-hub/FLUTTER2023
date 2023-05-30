import 'package:step_02/model/article.dart';

class TopNews {
  const TopNews(
      {required this.status,
      required this.totalResults,
      required this.articles});

  final String status;
  final int totalResults;
  final List<Article> articles;
// factory function tuzup aga fromJson degen at berip functiondun ichine Map syrio berebiz Map syrio <String, dynamic> alat jana json dep atyn atap koyobuz.
  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
        status: json['status'],
        totalResults: json['totalResults'],
        // articles: json['articles']);
        // articles лист алат. Листтин аталышы Article. from bolot!from kaysydan bolot? from json['articles]ten kelet! map() bul
        //json['articles'] listti bir birden kaytaryp beret! (x) bul element! => Article.fromJson kaytarat!
        articles: List<Article>.from(
            (json['articles']). /*map emne*/ map((x) => Article.fromJson(x))));
  }
}
