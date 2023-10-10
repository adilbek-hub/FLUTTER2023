import 'package:education/model/model_test/history/italia_V_IX.dart';
import 'package:education/model/model_test/history/nemis_koroldugu.dart';
import 'package:http/http.dart' as http;

class ItaliaVIXTestTopicsService {
  const ItaliaVIXTestTopicsService({required this.client});
  final http.Client client;
  Future<List<ItaliaVixTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/history/italia.json'));

      if (response.statusCode == 200) {
        final data = italiaVixTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      print('Кештен ката: ${e.toString()}');
    }
    return null;
  }
}

final italiaVIXTestTopicsService = ItaliaVIXTestTopicsService(
  client: http.Client(),
);
