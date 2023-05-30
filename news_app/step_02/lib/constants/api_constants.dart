import 'package:flutter/cupertino.dart';

class ApiConst {
  static const String apiKey = '2d01e9e3d28d4189b48461be856e9655';
  // apiKey ге барабарланган ключту топнюска барабарлангага берип койобуз. Бул ключту коштум дегени
  static const String topNews =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey';
  static const String sourchNews =
      'https://newsapi.org/v2/everything?q=%D0%9A%D0%B8%D1%82%D0%B0%D0%B9&apiKey=$apiKey';
}

class News {
  static const String newsImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF2KTjdkrae7DSg2iMlEIfg_oY2FXR6gNBLjEcxmVGw-w3TD9a56fKV9T7B2XXF9upJ5s&usqp=CAU';
}
