// To parse this JSON data, do
//
//     final testTopicModel = testTopicModelFromJson(jsonString);

import 'dart:convert';

TestTopicModel testTopicModelFromJson(String str) =>
    TestTopicModel.fromJson(json.decode(str));

String testTopicModelToJson(TestTopicModel data) => json.encode(data.toJson());

class TestTopicModel {
  List<Informatica> informatica;
  List<History> history;
  List<Geography> geography;
  List<Biology> biology;

  TestTopicModel({
    required this.informatica,
    required this.history,
    required this.geography,
    required this.biology,
  });

  factory TestTopicModel.fromJson(Map<String, dynamic> json) => TestTopicModel(
        informatica: List<Informatica>.from(
            json["informatica"].map((x) => Informatica.fromJson(x))),
        history:
            List<History>.from(json["history"].map((x) => History.fromJson(x))),
        geography: List<Geography>.from(
            json["geography"].map((x) => Geography.fromJson(x))),
        biology:
            List<Biology>.from(json["biology"].map((x) => Biology.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
        "history": List<dynamic>.from(history.map((x) => x.toJson())),
        "geography": List<dynamic>.from(geography.map((x) => x.toJson())),
        "biology": List<dynamic>.from(biology.map((x) => x.toJson())),
      };
}

class Biology {
  List<Kletka> menAndAnimal;
  List<Kletka> kletka;
  List<Kletka> nerv;
  List<Kletka> mee;

  Biology({
    required this.menAndAnimal,
    required this.kletka,
    required this.nerv,
    required this.mee,
  });

  factory Biology.fromJson(Map<String, dynamic> json) => Biology(
        menAndAnimal: List<Kletka>.from(
            json["men_and_animal"].map((x) => Kletka.fromJson(x))),
        kletka:
            List<Kletka>.from(json["kletka"].map((x) => Kletka.fromJson(x))),
        nerv: List<Kletka>.from(json["nerv"].map((x) => Kletka.fromJson(x))),
        mee: List<Kletka>.from(json["mee"].map((x) => Kletka.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "men_and_animal":
            List<dynamic>.from(menAndAnimal.map((x) => x.toJson())),
        "kletka": List<dynamic>.from(kletka.map((x) => x.toJson())),
        "nerv": List<dynamic>.from(nerv.map((x) => x.toJson())),
        "mee": List<dynamic>.from(mee.map((x) => x.toJson())),
      };
}

class Kletka {
  int id;
  String guestion;
  String image;
  List<Option> options;

  Kletka({
    required this.id,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory Kletka.fromJson(Map<String, dynamic> json) => Kletka(
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

class Geography {
  List<Kletka> europeCountry;
  List<Kletka> usa;
  List<Kletka> asia;
  List<Kletka> worldCountryCapitals;

  Geography({
    required this.europeCountry,
    required this.usa,
    required this.asia,
    required this.worldCountryCapitals,
  });

  factory Geography.fromJson(Map<String, dynamic> json) => Geography(
        europeCountry: List<Kletka>.from(
            json["europe_country"].map((x) => Kletka.fromJson(x))),
        usa: List<Kletka>.from(json["usa"].map((x) => Kletka.fromJson(x))),
        asia: List<Kletka>.from(json["asia"].map((x) => Kletka.fromJson(x))),
        worldCountryCapitals: List<Kletka>.from(
            json["world_country_capitals"].map((x) => Kletka.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "europe_country":
            List<dynamic>.from(europeCountry.map((x) => x.toJson())),
        "usa": List<dynamic>.from(usa.map((x) => x.toJson())),
        "asia": List<dynamic>.from(asia.map((x) => x.toJson())),
        "world_country_capitals":
            List<dynamic>.from(worldCountryCapitals.map((x) => x.toJson())),
      };
}

class History {
  List<Kletka> nemisKoroldugy;
  List<Kletka> baiyrkyGermandar;
  List<Kletka> italiaVX;
  List<Kletka> rim;

  History({
    required this.nemisKoroldugy,
    required this.baiyrkyGermandar,
    required this.italiaVX,
    required this.rim,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
        nemisKoroldugy: List<Kletka>.from(
            json["nemis_koroldugy"].map((x) => Kletka.fromJson(x))),
        baiyrkyGermandar: List<Kletka>.from(
            json["baiyrky_germandar"].map((x) => Kletka.fromJson(x))),
        italiaVX: List<Kletka>.from(
            json["italia_V_X"].map((x) => Kletka.fromJson(x))),
        rim: List<Kletka>.from(json["rim"].map((x) => Kletka.fromJson(x))),
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
  List<Kletka> personalComputer;
  List<Kletka> computerdicTarmaktar;
  List<Kletka> sistemalykKamsyzdoo;

  Informatica({
    required this.personalComputer,
    required this.computerdicTarmaktar,
    required this.sistemalykKamsyzdoo,
  });

  factory Informatica.fromJson(Map<String, dynamic> json) => Informatica(
        personalComputer: List<Kletka>.from(
            json["personal_computer"].map((x) => Kletka.fromJson(x))),
        computerdicTarmaktar: List<Kletka>.from(
            json["computerdic_tarmaktar"].map((x) => Kletka.fromJson(x))),
        sistemalykKamsyzdoo: List<Kletka>.from(
            json["sistemalyk_kamsyzdoo"].map((x) => Kletka.fromJson(x))),
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
