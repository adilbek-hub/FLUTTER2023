import 'dart:convert';
import 'dart:developer';

import 'package:for_internship/constants/api_const.dart';
import 'package:for_internship/models/user_model.dart';
import 'package:http/http.dart';

class UserRepository {
  String endpoind = ApiConst.apiKey;

  Future<List<UserModel>?> getUsers() async {
    Response response = await get(Uri.parse(endpoind));
    try {
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['data'];
        return result.map((e) => UserModel.fromJson(e)).toList();
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      log('$e');
    }
    return null;
  }
}
