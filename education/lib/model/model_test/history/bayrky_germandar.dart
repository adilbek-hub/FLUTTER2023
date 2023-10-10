// To parse this JSON data, do
//
//     final bayrkGermandarTestToicsModel = bayrkGermandarTestToicsModelFromJson(jsonString);

import 'dart:convert';

List<BayrkGermandarTestToicsModel> bayrkGermandarTestToicsModelFromJson(
        String str) =>
    List<BayrkGermandarTestToicsModel>.from(
        json.decode(str).map((x) => BayrkGermandarTestToicsModel.fromJson(x)));

String bayrkGermandarTestToicsModelToJson(
        List<BayrkGermandarTestToicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BayrkGermandarTestToicsModel {
  int id;
  Name name;
  Title title;
  String guestion;
  String image;
  List<Option> options;

  BayrkGermandarTestToicsModel({
    required this.id,
    required this.name,
    required this.title,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory BayrkGermandarTestToicsModel.fromJson(Map<String, dynamic> json) =>
      BayrkGermandarTestToicsModel(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        title: titleValues.map[json["title"]]!,
        guestion: json["guestion"],
        image: json["image"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "title": titleValues.reverse[title],
        "guestion": guestion,
        "image": image,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
      };
}

enum Name { EMPTY }

final nameValues = EnumValues({"Тарых": Name.EMPTY});

class Option {
  String answer;
  bool correct;

  Option({
    required this.answer,
    required this.correct,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        answer: json["answer"],
        correct: json["correct"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "correct": correct,
      };
}

enum Title { EMPTY }

final titleValues = EnumValues({"Байыркы германдыктар": Title.EMPTY});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
