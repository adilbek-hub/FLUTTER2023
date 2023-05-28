import 'dart:convert';

import 'package:product_api/api_const.dart';
import 'package:product_api/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<TopModel?> getUsers() async {
    try {
      var url = Uri.parse(ApiConst.baseUrl + ApiConst.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final topData = TopModel.fromJson(data);
        return topData;
      }
      return null;
    } catch (e) {
      e.toString();
    }
    return null;
  }
}
