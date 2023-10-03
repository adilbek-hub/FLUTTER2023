import 'dart:convert';

List<GeographyToicsModel> geographyToicsModelFromJson(String str) =>
    List<GeographyToicsModel>.from(
        json.decode(str).map((x) => GeographyToicsModel.fromJson(x)));

String geographyToicsModelToJson(List<GeographyToicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GeographyToicsModel {
  String text;
  List<Jooptor> jooptor;
  String image;

  GeographyToicsModel({
    required this.text,
    required this.jooptor,
    required this.image,
  });

  factory GeographyToicsModel.fromJson(Map<String, dynamic> json) =>
      GeographyToicsModel(
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
