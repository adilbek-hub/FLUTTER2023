// import 'package:education/model/another_all.dart';
// import 'package:http/http.dart' as http;

// class AnotherAllTopicsService {
//   const AnotherAllTopicsService({required this.client});
//   final http.Client client;
//   Future<List<AnotherAll>?> getData() async {
//     try {
//       final response = await http
//           .get(Uri.parse('https://adilbek-hub.github.io/my_data/my.json'));

//       if (response.statusCode == 200) {
//         final data = anotherAllFromJson(response.body);
//         return data;
//       } else {
//         throw Exception('Failed to load computer data');
//       }
//     } catch (e) {
//       print('Кештен ката: ${e.toString()}');
//     }
//     return null;
//   }
// }

// final anotherAllTopicsService = AnotherAllTopicsService(
//   client: http.Client(),
// );
