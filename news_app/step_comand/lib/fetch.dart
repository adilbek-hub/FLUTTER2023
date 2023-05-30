import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:step_comand/constants/api_constant.dart';
import 'package:step_comand/models/top_news.dart';

class TopNewsRepo {
  final http.Client client = http.Client();

  Future<TopNews?> fetchData() async {
    final Uri uri = Uri.parse(ApiConstant.topNews);
    final http.Response response = await client.get(uri);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final topNews = TopNews.fromJson(data);
      return topNews;
    }
  }
}
