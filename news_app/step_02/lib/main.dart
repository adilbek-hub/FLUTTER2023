import 'package:flutter/material.dart';
import 'package:step_02/app/app.dart';
//https://newsapi.org/docs/endpoints/everything => API Key  үчүн сайт.
//https://newsapi.org/v2/everything?q=%D0%9A%D0%B8%D1%82%D0%B0%D0%B9&apiKey=2d01e9e3d28d4189b48461be856e9655 => nPoint

// 1  http: ^0.13.5 / url_launcher: ^6.1.6 / share_plus: ^6.0.0 ПАКЕТТЕРИН жүктөө
// 2   url_launcher үчүн android жана iOSко  Configuration жүктөө
// 3 Дата, NPoint, Линк, Свет, Текстовый стиль жана башка үчүн папкаларды файлдарды даярдоо
// 4 NewsAPIга модель түзөбүз
// БИЗ ӨЗҮБҮЗГӨ КЕРЕКТҮҮ ПАПКАЛАРДЫ ДАЯРДАП АЛДЫК. ЭМИ ДАРТ ФАБРИКА МЕНЕН ИШТЕП КӨРӨЛҮ. БУГА ДАРТ КОД МЕНЕН ИШТЕП АЛАБЫЗ. => factory_metod step 01
// 5. source, Article, TopNews modeliне factory tuzobuz. Ал model папкасында
// 6. ApiKeyибизди жайгаштырып алабыз ал  constants папкасындагы api_constants.dart файлында.
// 7. Интернеттеги маалыматтарды алып келүүчү сервис жазайбыз. Ал fetch_service.dart файлында
// 8. fetch_service.dart файлындагы class TopNewsRepoнун ичиндеги future fetchTopNews функциясын home_view.dart файлындагы
//Statefull  виджеттин экинчи классынын ичине state менен күтүп алабыз.
// 8.1 null боло ала турган TopNews? topNews болсун.
// 8.2 Future асинхронный метод болсун. Асинхронный методдун ичине TopNewsRepo().fetchTopNews(); ну topNews га барабарла.
// 8.3 Барабарлагандан кийин setState кылып кой.
// 8.4 setState тен кийин initStateге  fetchNews() функцияны байлап кой. 
// 9. ЭМИ HOME_VIEW ДА ДИЗАЙН МЕНЕН ИШТЕЙБИЗ.

void main() {
  runApp(const MyApp());
}
