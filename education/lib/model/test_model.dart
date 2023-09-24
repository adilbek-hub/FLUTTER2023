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
  List<History> history;
  List<Geography> geography;

  TestTopicsModel({
    required this.informatica,
    required this.history,
    required this.geography,
  });

  factory TestTopicsModel.fromJson(Map<String, dynamic> json) =>
      TestTopicsModel(
        informatica: List<Informatica>.from(
            json["informatica"].map((x) => Informatica.fromJson(x))),
        history:
            List<History>.from(json["history"].map((x) => History.fromJson(x))),
        geography: List<Geography>.from(
            json["geography"].map((x) => Geography.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
        "history": List<dynamic>.from(history.map((x) => x.toJson())),
        "geography": List<dynamic>.from(geography.map((x) => x.toJson())),
      };
}

class Geography {
  List<Asia> europeCountry;
  List<Asia> usa;
  List<Asia> asia;
  List<Asia> rim;

  Geography({
    required this.europeCountry,
    required this.usa,
    required this.asia,
    required this.rim,
  });

  factory Geography.fromJson(Map<String, dynamic> json) => Geography(
        europeCountry: List<Asia>.from(
            json["europe_country"].map((x) => Asia.fromJson(x))),
        usa: List<Asia>.from(json["usa"].map((x) => Asia.fromJson(x))),
        asia: List<Asia>.from(json["asia"].map((x) => Asia.fromJson(x))),
        rim: List<Asia>.from(json["rim"].map((x) => Asia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "europe_country":
            List<dynamic>.from(europeCountry.map((x) => x.toJson())),
        "usa": List<dynamic>.from(usa.map((x) => x.toJson())),
        "asia": List<dynamic>.from(asia.map((x) => x.toJson())),
        "rim": List<dynamic>.from(rim.map((x) => x.toJson())),
      };
}

class Asia {
  int id;
  String guestion;
  String image;
  List<Option> options;

  Asia({
    required this.id,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory Asia.fromJson(Map<String, dynamic> json) => Asia(
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

class History {
  List<Asia> nemisKoroldugy;
  List<Asia> baiyrkyGermandar;
  List<Asia> italiaVX;
  List<Asia> rim;

  History({
    required this.nemisKoroldugy,
    required this.baiyrkyGermandar,
    required this.italiaVX,
    required this.rim,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
        nemisKoroldugy: List<Asia>.from(
            json["nemis_koroldugy"].map((x) => Asia.fromJson(x))),
        baiyrkyGermandar: List<Asia>.from(
            json["baiyrky_germandar"].map((x) => Asia.fromJson(x))),
        italiaVX:
            List<Asia>.from(json["italia_V_X"].map((x) => Asia.fromJson(x))),
        rim: List<Asia>.from(json["rim"].map((x) => Asia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nemis_koroldugy":
            List<dynamic>.from(nemisKoroldugy.map((x) => x.toJson())),
        "baiyrky_germandar":
            List<dynamic>.from(baiyrkyGermandar.map((x) => x.toJson())),
        "italia_V_X": List<dynamic>.from(italiaVX.map((x) => x.toJson())),
        "rim": List<dynamic>.from(rim.map((x) => x.toJson())),
      };
}

class Informatica {
  List<Asia> personalComputer;
  List<Asia> computerdicTarmaktar;
  List<Asia> sistemalykKamsyzdoo;

  Informatica({
    required this.personalComputer,
    required this.computerdicTarmaktar,
    required this.sistemalykKamsyzdoo,
  });

  factory Informatica.fromJson(Map<String, dynamic> json) => Informatica(
        personalComputer: List<Asia>.from(
            json["personal_computer"].map((x) => Asia.fromJson(x))),
        computerdicTarmaktar: List<Asia>.from(
            json["computerdic_tarmaktar"].map((x) => Asia.fromJson(x))),
        sistemalykKamsyzdoo: List<Asia>.from(
            json["sistemalyk_kamsyzdoo"].map((x) => Asia.fromJson(x))),
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
