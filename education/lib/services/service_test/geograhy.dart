import 'package:education/model/model_test/geography.dart';
import 'package:http/http.dart' as http;

class GeographyTopicsService {
  const GeographyTopicsService({required this.client});
  final http.Client client;
  Future<List<GeographyTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/geography_test.json'));

      if (response.statusCode == 200) {
        final data = geographyToicsModelFromJson(response.body);
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

final geographyTopicsService = GeographyTopicsService(
  client: http.Client(),
);
