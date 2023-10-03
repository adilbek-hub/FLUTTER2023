import 'package:education/model/model_test/usa_test.dart';
import 'package:http/http.dart' as http;

class UsaTestTopicsService {
  const UsaTestTopicsService({required this.client});
  final http.Client client;
  Future<List<UsaTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/geography/geography_test_usa.json'));

      if (response.statusCode == 200) {
        final data = usaToicsModelFromJson(response.body);
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

final usaTestTopicsService = UsaTestTopicsService(
  client: http.Client(),
);
