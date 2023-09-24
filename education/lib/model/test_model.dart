import 'dart:convert';

TestTopicsModel testTopicsModelFromJson(String str) =>
    TestTopicsModel.fromJson(json.decode(str));

String testTopicsModelToJson(TestTopicsModel data) =>
    json.encode(data.toJson());

class TestTopicsModel {
  List<Informatica> informatica;
  List<History> history;

  TestTopicsModel({
    required this.informatica,
    required this.history,
  });

  factory TestTopicsModel.fromJson(Map<String, dynamic> json) =>
      TestTopicsModel(
        informatica: List<Informatica>.from(
            json["informatica"].map((x) => Informatica.fromJson(x))),
        history:
            List<History>.from(json["history"].map((x) => History.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
        "history": List<dynamic>.from(history.map((x) => x.toJson())),
      };
}

class History {
  List<BaiyrkyGermandar> nemisKoroldugy;
  List<BaiyrkyGermandar> baiyrkyGermandar;
  List<BaiyrkyGermandar> italiaVX;
  List<BaiyrkyGermandar> rim;

  History({
    required this.nemisKoroldugy,
    required this.baiyrkyGermandar,
    required this.italiaVX,
    required this.rim,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
        nemisKoroldugy: List<BaiyrkyGermandar>.from(
            json["nemis_koroldugy"].map((x) => BaiyrkyGermandar.fromJson(x))),
        baiyrkyGermandar: List<BaiyrkyGermandar>.from(
            json["baiyrky_germandar"].map((x) => BaiyrkyGermandar.fromJson(x))),
        italiaVX: List<BaiyrkyGermandar>.from(
            json["italia_V_X"].map((x) => BaiyrkyGermandar.fromJson(x))),
        rim: List<BaiyrkyGermandar>.from(
            json["rim"].map((x) => BaiyrkyGermandar.fromJson(x))),
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

class BaiyrkyGermandar {
  int id;
  String guestion;
  String image;
  List<Option> options;

  BaiyrkyGermandar({
    required this.id,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory BaiyrkyGermandar.fromJson(Map<String, dynamic> json) =>
      BaiyrkyGermandar(
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

class Informatica {
  List<BaiyrkyGermandar> personalComputer;
  List<BaiyrkyGermandar> computerdicTarmaktar;
  List<BaiyrkyGermandar> sistemalykKamsyzdoo;

  Informatica({
    required this.personalComputer,
    required this.computerdicTarmaktar,
    required this.sistemalykKamsyzdoo,
  });

  factory Informatica.fromJson(Map<String, dynamic> json) => Informatica(
        personalComputer: List<BaiyrkyGermandar>.from(
            json["personal_computer"].map((x) => BaiyrkyGermandar.fromJson(x))),
        computerdicTarmaktar: List<BaiyrkyGermandar>.from(
            json["computerdic_tarmaktar"]
                .map((x) => BaiyrkyGermandar.fromJson(x))),
        sistemalykKamsyzdoo: List<BaiyrkyGermandar>.from(
            json["sistemalyk_kamsyzdoo"]
                .map((x) => BaiyrkyGermandar.fromJson(x))),
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
