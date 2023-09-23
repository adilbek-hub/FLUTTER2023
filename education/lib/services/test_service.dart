import 'package:http/http.dart' as http;
import '../model/test_model.dart';

class TestTopicsService {
  const TestTopicsService({required this.client});
  final http.Client client;
  Future<TestTopicsModel?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://adilbek-hub.github.io/my_data/test.json'));

      if (response.statusCode == 200) {
        final data = testTopicsModelFromJson(response.body);
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

final testTopicsService = TestTopicsService(
  client: http.Client(),
);
