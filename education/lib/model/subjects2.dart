import 'dart:convert';

Computer computerFromJson(String str) => Computer.fromJson(json.decode(str));

String computerToJson(Computer data) => json.encode(data.toJson());

class Computer {
  List<One> one;

  Computer({
    required this.one,
  });

  factory Computer.fromJson(Map<String, dynamic> json) => Computer(
        one: List<One>.from(json["one"].map((x) => One.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "one": List<dynamic>.from(one.map((x) => x.toJson())),
      };
}

class One {
  String title;
  String description;
  String image;
  List<ComputerPart> computerParts;

  One({
    required this.title,
    required this.description,
    required this.image,
    required this.computerParts,
  });

  factory One.fromJson(Map<String, dynamic> json) => One(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        computerParts: List<ComputerPart>.from(
            json["computerParts"].map((x) => ComputerPart.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "computerParts":
            List<dynamic>.from(computerParts.map((x) => x.toJson())),
      };
}

class ComputerPart {
  String tema;
  String name;
  String image;
  Text text;

  ComputerPart({
    required this.tema,
    required this.name,
    required this.image,
    required this.text,
  });

  factory ComputerPart.fromJson(Map<String, dynamic> json) => ComputerPart(
        tema: json["tema"],
        name: json["name"],
        image: json["image"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "tema": tema,
        "name": name,
        "image": image,
        "text": textValues.reverse[text],
      };
}

enum Text { EMPTY }

final textValues = EnumValues({"Толук оку": Text.EMPTY});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
