import 'dart:convert';

class ImformaticaBolumu {
  ImformaticaBolumu({
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'image': image});
    result.addAll({'title': title});
    result.addAll({'description': description});

    return result;
  }

  factory ImformaticaBolumu.fromMap(Map<String, dynamic> map) {
    return ImformaticaBolumu(
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImformaticaBolumu.fromJson(String source) =>
      ImformaticaBolumu.fromMap(json.decode(source));
}
