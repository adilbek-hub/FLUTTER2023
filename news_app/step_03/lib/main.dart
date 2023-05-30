import 'package:flutter/material.dart';
import 'package:step_03/app/app.dart';
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

/*Экинчи бетин жасоо*/
// Биринчи беттеги кыска жаңылыктуу списоктун бирин басып деталдуу окуу үчүн
// 1.Списоктун бирин басканда экинчи бетке өтүүчү кылып даярдоо. home_page to detail_page
// 2. Бир Articleды биз колдонуу үчүн detail_pageге финалдаштыруу.
// 3. Эми экинчи пейдж менен иштеп баштайбыз.
// 3.1. AppBarга жогорудан келген articleдын titleын койуу
// 3.2.Толуп кеткен articleдын titleга overflow колдонуу.
// 3.3. Солу 15 үстүнөн 20 оңунан 15 аралык кыскарган Bodyнин Columnга артиклдын тайтлын беребиз
// жана тайтл бодинин башындагы ортонку орунду алуусу шарт ошондой эле тайтлга стиль беребиз.
// Стильдин абалы: Текст көлөмү 20, өңү кара, шрифттин салмагы w700 болсун.
// 3.4. Column менен бирдей аралыкта горизонталдуу линия чийүү. Линиянын өңү боз, калыңдыгы 2 пиксель,
// үсүндөгү тексттен ылдый 20 пиксельге жана астынан 20 пиксельге боштук алсын. Бул баары болуп 40 пиксель.
// 3.5. Columnдагы текстти рефакторлоо
// 3.6. Row ичине убакыт иконкасы, дата ортодо(maa.c). Иконканын өңү боз, көлөмү 30, датадан келген число. Число intl пакети менен
// ишке ашат. Убакыттын форматы ("d MMM H:m"). Числонун стили: өңү кара,  көлөмү 16, тексттин салмагы w400.
// 3.7 Иконкасы жана Числосу бар Rowну рефакторлоо жана таймга барабарланган убакыт число форматтарын DetailDateTime классы
// виджет кылсын.
// 3.8. Датадан келген Image кой.
// 3.9. Датадан келген description кой. тексттин стили: өңү кара, көлөмү 16, шрифттин салмагы w400.
// 3.10. Divider refactoring
// 3.11. AppBarга actionга iconButton кой, ал иконка share болсун.
// 3.12. Descriptionдон кийин бир ElevatedButton болсун. Ал read more аталышында
// болуш керек. Elevatedге стиль берилиш керек. Стилдин берилиши ElevatedButton.styleFrom бардык өңү primary менен.
// 3.13. ElevatedButtonду refactoring (ReadMoreButton).
// 3.14. ElevatedButtonдун функциясын сырттан алып келме кыл.
// 4. SHAREНИ БАСЫП БӨЛҮШҮҮ
// 4.1 onPressedте иштөө
// 5. Read more басып жаңылыкты сайттан толук окуу.
// 5.1. Url_launcher пакетин колдонобуз.
// 5.2. ios android үчүн Info.plist жана AndroidManifest.xml файлдарына https орнотуу жана pub get.
// 5.3. Read more onPressedте иштөө.
// 6. UrlToImageТЕН КЕЛБЕЙ КАЛГАН СУРОТТОРДЦН ОРДУН ТОЛУКТОО.
// 6.1. cached_network_image пакетин колдонобуз.
// 6.2. assetsке тиешелүү сүрөттөрдү киргизип коёбуз.
// 6.3. Кардтагы жана NewsDetailPageтеги networkтун ордуна CachedNetworkImage менен
// иштейбиз. Ичинде image URL:, placeholder:, errorWidget: менен толукталышы керек.

void main() {
  runApp(const MyApp());
}
