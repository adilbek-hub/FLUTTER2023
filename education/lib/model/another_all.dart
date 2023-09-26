// import 'dart:convert';

// List<AnotherAll> anotherAllFromJson(String str) =>
//     List<AnotherAll>.from(json.decode(str).map((x) => AnotherAll.fromJson(x)));

// String anotherAllToJson(List<AnotherAll> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class AnotherAll {
//   String name;
//   String description;
//   String image1;
//   String image2;

//   AnotherAll({
//     required this.name,
//     required this.description,
//     required this.image1,
//     required this.image2,
//   });

//   factory AnotherAll.fromJson(Map<String, dynamic> json) => AnotherAll(
//         name: json["name"],
//         description: json["description"],
//         image1: json["image1"],
//         image2: json["image2"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "description": description,
//         "image1": image1,
//         "image2": image2,
//       };
// }
