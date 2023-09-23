import 'dart:convert';

TestTopicsModel testTopicsModelFromJson(String str) =>
    TestTopicsModel.fromJson(json.decode(str));

String testTopicsModelToJson(TestTopicsModel data) =>
    json.encode(data.toJson());

class TestTopicsModel {
  List<Informatica> informatica;

  TestTopicsModel({
    required this.informatica,
  });

  factory TestTopicsModel.fromJson(Map<String, dynamic> json) =>
      TestTopicsModel(
        informatica: List<Informatica>.from(
            json["informatica"].map((x) => Informatica.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
      };
}

class Informatica {
  int id;
  String guestion;
  String image;
  List<Option> options;

  Informatica({
    required this.id,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory Informatica.fromJson(Map<String, dynamic> json) => Informatica(
        id: json["id"],
        guestion: json["guestion"],
        image: json["image"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "guestion": guestion,
        "image": image,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
      };
}

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
