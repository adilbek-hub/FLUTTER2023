import 'dart:convert';

List<GeographyTestToicsModel> geographyToicsModelFromJson(String str) =>
    List<GeographyTestToicsModel>.from(
        json.decode(str).map((x) => GeographyTestToicsModel.fromJson(x)));

String geographyToicsModelToJson(List<GeographyTestToicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GeographyTestToicsModel {
  String text;
  List<Jooptor> jooptor;
  String image;

  GeographyTestToicsModel({
    required this.text,
    required this.jooptor,
    required this.image,
  });

  factory GeographyTestToicsModel.fromJson(Map<String, dynamic> json) =>
      GeographyTestToicsModel(
        text: json["text"],
        jooptor:
            List<Jooptor>.from(json["jooptor"].map((x) => Jooptor.fromJson(x))),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "jooptor": List<dynamic>.from(jooptor.map((x) => x.toJson())),
        "image": image,
      };
}

class Jooptor {
  String text;
  bool isTrue;

  Jooptor({
    required this.text,
    required this.isTrue,
  });

  factory Jooptor.fromJson(Map<String, dynamic> json) => Jooptor(
        text: json["text"],
        isTrue: json["isTrue"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "isTrue": isTrue,
      };
}
