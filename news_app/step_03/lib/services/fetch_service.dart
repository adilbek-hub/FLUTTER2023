import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:step_03/constants/api_constants.dart';
import 'package:step_03/model/top_news.dart';

//TopNews алып келе турган бир сервис жазайбыз анын аталышын репозиторий деп атап койушат.
// ушундай бир сервис жазаш чн бир класс тзп ага функция беребиз.

class TopNewsRepo {
  // http paketinin ichindegi baardyk nerselerdi koldonom
  // client degen emne agayga suroo
  final http.Client client = http.Client();

// npoint aluuda future menen ishteybiz. Future TopNews kaytarat
  Future<TopNews?> fetchTopNews() async {
    //get ichine Uri alat anda biz Uri tuzolu jana Url parse string alat
    final Uri uri = Uri.parse(ApiConst.topNews);
    final http.Response response = await client.get(uri);
    // Eger bizdin suroo talabybyz (statusCode) iygiliktuu ishke ashsa (200)
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      // Тибин текшерсек String форматта келди
      print(response.body.runtimeType);
      // 1. Даталарды алып келип алдык. Датанын тиби String. Эми келген даталарды кантип колдонобуз?
      // 1.1. String Датабызды (Map)ке же (json)го которуп алабыз.
      final data = jsonDecode(response.body);
      print(data);
      // консолго  Map json форматта келди => 1.1 ишке ашты.
      print(data.runtimeType);
      // 1.2. Алынган (Map) же (json)ду TopNews model ге бериш керек.
      final topNews = TopNews.fromJson(data);
      print(topNews);
      // Топнюс модельге берилди 1.2 ишке ашты
      print(topNews.runtimeType);
      // 1.3. Бул функция TopNews model ди кайтарыш керек.
      return topNews;
      // TopNews model  кайтарылды. 1.3 ишке ашты.
    }
  }
}
