// To parse this JSON data, do
//
//     final testTopicsModel = testTopicsModelFromJson(jsonString);

import 'dart:convert';

TestTopicsModel testTopicsModelFromJson(String str) => TestTopicsModel.fromJson(json.decode(str));

String testTopicsModelToJson(TestTopicsModel data) => json.encode(data.toJson());

class TestTopicsModel {
    List<Informatica> informatica;
    List<History> history;
    List<Geography> geography;
    List<Biology> biology;

    TestTopicsModel({
        required this.informatica,
        required this.history,
        required this.geography,
        required this.biology,
    });

    factory TestTopicsModel.fromJson(Map<String, dynamic> json) => TestTopicsModel(
        informatica: List<Informatica>.from(json["informatica"].map((x) => Informatica.fromJson(x))),
        history: List<History>.from(json["history"].map((x) => History.fromJson(x))),
        geography: List<Geography>.from(json["geography"].map((x) => Geography.fromJson(x))),
        biology: List<Biology>.from(json["biology"].map((x) => Biology.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
        "history": List<dynamic>.from(history.map((x) => x.toJson())),
        "geography": List<dynamic>.from(geography.map((x) => x.toJson())),
        "biology": List<dynamic>.from(biology.map((x) => x.toJson())),
    };
}

class Biology {
    List<ComputerdicTarmaktar> menAndAnimal;
    List<ComputerdicTarmaktar> computerdicTarmaktar;
    List<ComputerdicTarmaktar> kletka;
    List<ComputerdicTarmaktar> nerv;
    List<ComputerdicTarmaktar> mee;

    Biology({
        required this.menAndAnimal,
        required this.computerdicTarmaktar,
        required this.kletka,
        required this.nerv,
        required this.mee,
    });

    factory Biology.fromJson(Map<String, dynamic> json) => Biology(
        menAndAnimal: List<ComputerdicTarmaktar>.from(json["men_and_animal"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        computerdicTarmaktar: List<ComputerdicTarmaktar>.from(json["computerdic_tarmaktar"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        kletka: List<ComputerdicTarmaktar>.from(json["kletka"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        nerv: List<ComputerdicTarmaktar>.from(json["nerv"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        mee: List<ComputerdicTarmaktar>.from(json["mee"].map((x) => ComputerdicTarmaktar.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "men_and_animal": List<dynamic>.from(menAndAnimal.map((x) => x.toJson())),
        "computerdic_tarmaktar": List<dynamic>.from(computerdicTarmaktar.map((x) => x.toJson())),
        "kletka": List<dynamic>.from(kletka.map((x) => x.toJson())),
        "nerv": List<dynamic>.from(nerv.map((x) => x.toJson())),
        "mee": List<dynamic>.from(mee.map((x) => x.toJson())),
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

    factory ComputerdicTarmaktar.fromJson(Map<String, dynamic> json) => ComputerdicTarmaktar(
        id: json["id"],
        guestion: json["guestion"],
        image: json["image"],
        options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
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
    List<ComputerdicTarmaktar> europeCountry;
    List<ComputerdicTarmaktar> usa;
    List<ComputerdicTarmaktar> asia;
    List<ComputerdicTarmaktar> worldCountryCapitals;

    Geography({
        required this.europeCountry,
        required this.usa,
        required this.asia,
        required this.worldCountryCapitals,
    });

    factory Geography.fromJson(Map<String, dynamic> json) => Geography(
        europeCountry: List<ComputerdicTarmaktar>.from(json["europe_country"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        usa: List<ComputerdicTarmaktar>.from(json["usa"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        asia: List<ComputerdicTarmaktar>.from(json["asia"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        worldCountryCapitals: List<ComputerdicTarmaktar>.from(json["world_country_capitals"].map((x) => ComputerdicTarmaktar.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "europe_country": List<dynamic>.from(europeCountry.map((x) => x.toJson())),
        "usa": List<dynamic>.from(usa.map((x) => x.toJson())),
        "asia": List<dynamic>.from(asia.map((x) => x.toJson())),
        "world_country_capitals": List<dynamic>.from(worldCountryCapitals.map((x) => x.toJson())),
    };
}

class History {
    List<ComputerdicTarmaktar> nemisKoroldugy;
    List<ComputerdicTarmaktar> baiyrkyGermandar;
    List<ComputerdicTarmaktar> italiaVX;
    List<ComputerdicTarmaktar> rim;

    History({
        required this.nemisKoroldugy,
        required this.baiyrkyGermandar,
        required this.italiaVX,
        required this.rim,
    });

    factory History.fromJson(Map<String, dynamic> json) => History(
        nemisKoroldugy: List<ComputerdicTarmaktar>.from(json["nemis_koroldugy"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        baiyrkyGermandar: List<ComputerdicTarmaktar>.from(json["baiyrky_germandar"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        italiaVX: List<ComputerdicTarmaktar>.from(json["italia_V_X"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        rim: List<ComputerdicTarmaktar>.from(json["rim"].map((x) => ComputerdicTarmaktar.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "nemis_koroldugy": List<dynamic>.from(nemisKoroldugy.map((x) => x.toJson())),
        "baiyrky_germandar": List<dynamic>.from(baiyrkyGermandar.map((x) => x.toJson())),
        "italia_V_X": List<dynamic>.from(italiaVX.map((x) => x.toJson())),
        "rim": List<dynamic>.from(rim.map((x) => x.toJson())),
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
        personalComputer: List<ComputerdicTarmaktar>.from(json["personal_computer"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        computerdicTarmaktar: List<ComputerdicTarmaktar>.from(json["computerdic_tarmaktar"].map((x) => ComputerdicTarmaktar.fromJson(x))),
        sistemalykKamsyzdoo: List<ComputerdicTarmaktar>.from(json["sistemalyk_kamsyzdoo"].map((x) => ComputerdicTarmaktar.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "personal_computer": List<dynamic>.from(personalComputer.map((x) => x.toJson())),
        "computerdic_tarmaktar": List<dynamic>.from(computerdicTarmaktar.map((x) => x.toJson())),
        "sistemalyk_kamsyzdoo": List<dynamic>.from(sistemalykKamsyzdoo.map((x) => x.toJson())),
    };
}
