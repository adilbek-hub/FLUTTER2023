import 'dart:convert';

class Todo {
  Todo({
    required this.title,
    this.description,
    required this.isComplated,
    required this.author,
  });
  final String title;
  final String? description;
  final bool isComplated;
  final String author;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isComplated': isComplated,
      'author': author,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] ?? '',
      description: map['description'],
      isComplated: map['isComplated'] ?? false,
      author: map['author'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));
}
