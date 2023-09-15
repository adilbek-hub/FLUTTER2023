import 'package:http/http.dart' as http;

import '../model/geography_model.dart';

class GeographyTopicsService {
  const GeographyTopicsService({required this.client});
  final http.Client client;
  Future<GeographyTopicsModel?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/geography_data.json'));

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

final geographyTopicsService = GeographyTopicsService(
  client: http.Client(),
);
