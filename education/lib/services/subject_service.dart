import 'package:education/model/subjects2.dart';
import 'package:http/http.dart' as http;

class SubjectService {
  const SubjectService({required this.client});
  final http.Client client;

  Future<List<Subjects2>?> getData() async {
    try {
      final uri =
          Uri.parse('https://adilbek-hub.github.io/my_data/my_data.json');
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return fromStringList(response.body);
      } else {
        return null;
      }
    } catch (e) {
      print('Catch: ${e.toString()}');
      return null;
    }
  }
}

final subjectService = SubjectService(
  client: http.Client(),
);
