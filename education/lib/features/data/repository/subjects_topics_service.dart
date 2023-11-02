import 'package:http/http.dart' as http;
import '../../../model/subjects_topics_model.dart';

class SubjectsTopicsService {
  const SubjectsTopicsService({required this.client});
  final http.Client client;
  Future<List<SubjectsTopicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/subjects_card.json'));

      if (response.statusCode == 200) {
        final data = subjectsTopicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final subjectsTopicsService = SubjectsTopicsService(
  client: http.Client(),
);
