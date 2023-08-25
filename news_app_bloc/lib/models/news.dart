import 'dart:convert';

class News {
  final String? author;
  final String title;
  final String description;
  final String? urlToImage;
  final String publishedAt;
  final String? content;
  News({
    this.author,
    required this.title,
    required this.description,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      author: json['author'],
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'],
    );
  }
}