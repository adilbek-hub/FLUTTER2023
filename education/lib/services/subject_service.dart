import 'package:education/model/subjects2.dart';
import 'package:http/http.dart' as http;

class SubjectService {
  const SubjectService({required this.client});
  final http.Client client;
  Future<Computer?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://adilbek-hub.github.io/my_data/my_data.json'));

      if (response.statusCode == 200) {
        final data = computerFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      print('Catch error: ${e.toString()}');
    }
    return null;
  }
}

final subjectService = SubjectService(
  client: http.Client(),
);
