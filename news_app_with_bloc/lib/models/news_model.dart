class News {
  const News(
      {this.author,
      required this.title,
      required this.description,
      this.urlToImage,
      required this.publisedAt,
      this.content});
  final String? author;
  final String title;
  final String description;
  final String? urlToImage;
  final String publisedAt;
  final String? content;
  factory News.fromJson(Map<String, dynamic> json) {
    return News(
        author: json['author'] != null ? json['author'] as String : null,
        title: json['title'] as String,
        description: json['description'] as String,
        urlToImage:
            json['urlToImage'] != null ? json['urlToImage'] as String : null,
        publisedAt: json['publisedAt'] as String,
        content: json['content'] != null ? json['content'] as String : null);
  }
}
