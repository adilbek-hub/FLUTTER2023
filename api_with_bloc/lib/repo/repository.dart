import 'dart:convert';

import 'package:api_with_bloc/models/model.dart';
import 'package:http/http.dart' as http;

class UserRepo {
  Future<List<UserModel>?> userQuests() async {
    var url = Uri.https('http://reqres.in/api/users?page=2');
    var response = await http.post(url);
    try {
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['data'];
        return result.map((e) => UserModel.fromJson(e)).toList();
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
