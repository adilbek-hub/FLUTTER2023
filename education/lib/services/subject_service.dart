import 'package:education/model/informatica_model.dart';
import 'package:http/http.dart' as http;

class SubjectService {
  const SubjectService({required this.client});
  final http.Client client;
  Future<InformaticaTopics?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://adilbek-hub.github.io/my_data/my_data.json'));

      if (response.statusCode == 200) {
        final data = informaticaTopicsFromJson(response.body);
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

final subjectService = SubjectService(
  client: http.Client(),
);
