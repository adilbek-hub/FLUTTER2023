import 'dart:convert';

List<Subjects2> fromStringList(String source) =>
    (jsonDecode(source) as List).map((e) => Subjects2.fromMap(e)).toList();

class Subjects2 {
  const Subjects2(
      {required this.title, required this.description, required this.image});

  final String title;
  final String description;
  final String image;

  factory Subjects2.fromMap(Map<String, dynamic> map) {
    return Subjects2(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      image: map['image'] ?? '',
    );
  }
}
