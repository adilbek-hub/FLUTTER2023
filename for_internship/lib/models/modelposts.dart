class Posts {
  Posts(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
  final int userId;
  final int id;
  final String title;
  final String body;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );
}
