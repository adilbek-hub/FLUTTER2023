import 'package:education/model/geography_model.dart';
import 'package:http/http.dart' as http;
import '../model/history_model.dart';

class GeograhyTopicsService {
  const GeograhyTopicsService({required this.client});
  final http.Client client;
  Future<List<GeographyTopicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/geography_data2.json'));

      if (response.statusCode == 200) {
        final data = geographyTopicsModelFromJson(response.body);
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

final geographyTopicsService = GeograhyTopicsService(
  client: http.Client(),
);
