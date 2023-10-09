import 'package:education/model/model_test/biology_test/kletka.dart';
import 'package:education/model/model_test/biology_test/men_and_animal.dart';
import 'package:http/http.dart' as http;

class KletkaTestTopicsService {
  const KletkaTestTopicsService({required this.client});
  final http.Client client;
  Future<List<KletkaTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/biology/kletka.json'));

      if (response.statusCode == 200) {
        final data = kletkaTestToicsModelFromJson(response.body);
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

final manAndAnimalTestTopicsService = KletkaTestTopicsService(
  client: http.Client(),
);
