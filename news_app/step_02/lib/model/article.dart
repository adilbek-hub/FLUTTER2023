import 'package:step_02/model/source.dart';

class Article {
  const Article(
      {this.source,
      this.author,
      required this.title,
      required this.description,
      this.url,
      this.urlToImage,
      required this.publishedAt,
      required this.content});

  final Source? source;
  final String? author;
  final String title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

// Factory bul fabrica! al emne alat? syrttan bir syroi alyp kaysyl model tuzulgon bolso oshol modeldi kaytaryp beret!
// factory function tuzup aga fromJson degen at berip functiondun ichine Map syrio berebiz Map syrio <String, dynamic> alat jana json dep atyn atap koyobuz.
/*kashanun ichindegi json bul at. uchul at menen apidegi id, namedi chakyryp alabuz*/
  factory Article.fromJson(Map<String, dynamic> json) {
    // Source kaytarabuz dagy anyn ichindegi id ge jsondun 'id' sin baylaybyz, nameine jsondun 'name'in baylaybuz.
    return Article(
      source: Source.fromJsone(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
