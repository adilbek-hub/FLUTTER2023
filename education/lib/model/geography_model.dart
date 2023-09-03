// To parse this JSON data, do
//
//     final geographyTopics = geographyTopicsFromJson(jsonString);

import 'dart:convert';

GeographyTopicsModel geographyTopicsFromJson(String str) =>
    GeographyTopicsModel.fromJson(json.decode(str));

String geographyTopicsToJson(GeographyTopicsModel data) =>
    json.encode(data.toJson());

class GeographyTopicsModel {
  List<Geography> geography;

  GeographyTopicsModel({
    required this.geography,
  });

  factory GeographyTopicsModel.fromJson(Map<String, dynamic> json) =>
      GeographyTopicsModel(
        geography: List<Geography>.from(
            json["geography"].map((x) => Geography.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "geography": List<dynamic>.from(geography.map((x) => x.toJson())),
      };
}

class Geography {
  String title;
  String description;
  String image;
  List<Map<String, String>>? europeCountriesCapital;
  List<Usa>? usa;

  Geography({
    required this.title,
    required this.description,
    required this.image,
    this.europeCountriesCapital,
    this.usa,
  });

  factory Geography.fromJson(Map<String, dynamic> json) => Geography(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        europeCountriesCapital: json["europe_countries_capital"] == null
            ? []
            : List<Map<String, String>>.from(json["europe_countries_capital"]!
                .map((x) =>
                    Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
        usa: json["usa"] == null
            ? []
            : List<Usa>.from(json["usa"]!.map((x) => Usa.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "europe_countries_capital": europeCountriesCapital == null
            ? []
            : List<dynamic>.from(europeCountriesCapital!.map((x) =>
                Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
        "usa":
            usa == null ? [] : List<dynamic>.from(usa!.map((x) => x.toJson())),
      };
}

class Usa {
  String? title;
  String tema;
  String? image;
  List<UsaState>? usaStates;
  String? text;

  Usa({
    this.title,
    required this.tema,
    this.image,
    this.usaStates,
    this.text,
  });

  factory Usa.fromJson(Map<String, dynamic> json) => Usa(
        title: json["title"],
        tema: json["tema"],
        image: json["image"],
        usaStates: json["usa_states"] == null
            ? []
            : List<UsaState>.from(
                json["usa_states"]!.map((x) => UsaState.fromJson(x))),
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "tema": tema,
        "image": image,
        "usa_states": usaStates == null
            ? []
            : List<dynamic>.from(usaStates!.map((x) => x.toJson())),
        "text": text,
      };
}

class UsaState {
  String state;
  String population;
  String adminCountry;

  UsaState({
    required this.state,
    required this.population,
    required this.adminCountry,
  });

  factory UsaState.fromJson(Map<String, dynamic> json) => UsaState(
        state: json["state"],
        population: json["population"],
        adminCountry: json["admin_country"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "population": population,
        "admin_country": adminCountry,
      };
}
