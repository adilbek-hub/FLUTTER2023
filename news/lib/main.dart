import 'package:flutter/material.dart';
import 'package:news/app/app.dart';

void main() {
  runApp(const MyApp());
}

/*Колдонуучу PopupMenuButtonдогу "OAE" баскычын басат.
onSelected окуя иштеткичи чакырылат жана тандалган Country объектисин алат (бул учурда, oae объекти).
fetchNews асинхрондук функциясы чакырылып, тандалган өлкөнүн домени (item.domain) өткөрүлүп берилет.
fetchNews функциясынын ичинде topNews нөлгө коюлган.
setState() ыкмасы деп аталат, ал жаңылыктардын жүктөлүшүн көрсөтүү үчүн колдонуучу интерфейсин жаңыртат.
TopNewsRepo классынын мисалы түзүлдү.
TopNewsRepo классынын fetchTopNews ыкмасы өткөн домен (item.domain) менен чакырылат.
fetchTopNews методунун ичинде http.Client объекти API'ге HTTP суроо-талапты жасоо үчүн колдонулат.
Uri Uri.parse() ыкмасы жана домен менен API ачкычын камтыган URL аркылуу түзүлөт.
Client.get(uri) объектинин жардамы менен түзүлгөн URL дарегине GET сурамы жасалат.
Кабыл алынган жооп (http.Response) ийгиликтүү суроо үчүн статус коду (200 же 201) менен текшерилет.
Эгер абал коду ийгиликтүү болсо, жооп органынын берилиштери (response.body) jsonDecode(response.body) аркылуу JSONден коддон чыгарылат.
ТопNews классынын мисалы декоддолгон маалыматтардан түзүлөт (TopNews.fromJson(data)).
Метод түзүлгөн TopNews инстанциясын кайтарат.
fetchNews функциясындагы topNews мааниси алынган жаңылыктар менен жаңыртылды.
setState() методу чакырылат, ал алынган жаңылыктарды көрсөтүү үчүн колдонуучу интерфейсин жаңылайт.
Процесс аяктайт жана колдонуучу өз экранында OAE (Бириккен Араб Эмираттары) өлкөсү үчүн жаңылыктарды көрөт.
*/