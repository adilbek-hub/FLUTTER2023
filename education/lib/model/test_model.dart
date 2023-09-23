// To parse this JSON data, do
//
//     final testTopicsModel = testTopicsModelFromJson(jsonString);

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
  List<ComputerdicTarmaktar> personalComputer;
  List<ComputerdicTarmaktar> computerdicTarmaktar;
  List<ComputerdicTarmaktar> sistemalykKamsyzdoo;

  Informatica({
    required this.personalComputer,
    required this.computerdicTarmaktar,
    required this.sistemalykKamsyzdoo,
  });

  factory Informatica.fromJson(Map<String, dynamic> json) => Informatica(
        personalComputer: List<ComputerdicTarmaktar>.from(
            json["personal_computer"]
                .map((x) => ComputerdicTarmaktar.fromJson(x))),
        computerdicTarmaktar: List<ComputerdicTarmaktar>.from(
            json["computerdic_tarmaktar"]
                .map((x) => ComputerdicTarmaktar.fromJson(x))),
        sistemalykKamsyzdoo: List<ComputerdicTarmaktar>.from(
            json["sistemalyk_kamsyzdoo"]
                .map((x) => ComputerdicTarmaktar.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "personal_computer":
            List<dynamic>.from(personalComputer.map((x) => x.toJson())),
        "computerdic_tarmaktar":
            List<dynamic>.from(computerdicTarmaktar.map((x) => x.toJson())),
        "sistemalyk_kamsyzdoo":
            List<dynamic>.from(sistemalykKamsyzdoo.map((x) => x.toJson())),
      };
}

class ComputerdicTarmaktar {
  int id;
  String guestion;
  String image;
  List<Option> options;

  ComputerdicTarmaktar({
    required this.id,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory ComputerdicTarmaktar.fromJson(Map<String, dynamic> json) =>
      ComputerdicTarmaktar(
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
