import 'package:api_json_playsholder2/api_const.dart';
import 'package:api_json_playsholder2/model/post_model.dart';
import 'package:api_json_playsholder2/model/user_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  final http.Client client = http.Client();
  Future<List<PostsModel>?> fetchData() async {
    final Uri uri = Uri.parse(ApiConst.apiPosts);
    final http.Response response = await http.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final json = response.body;
      return postModelFromJson(json);
    } else {
      return null;
    }
  }

////////////////////////////////////////////////////////////////////////////////////
  Future<List<UsersModel>?> userFromJson() async {
    final Uri uri = Uri.parse(ApiConst.apiUsers);
    final http.Response response = await http.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final json = response.body;
      return userModelFromJson(json);
    }
    return null;
  }
}
