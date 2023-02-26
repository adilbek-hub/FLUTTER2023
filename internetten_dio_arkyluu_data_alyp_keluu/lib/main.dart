import 'package:flutter/material.dart';
import 'package:internetten_dio_arkyluu_data_alyp_keluu/app.dart';

void main() {
  runApp(const MyApp());
}

/*
 Weatherдеги маалыматтар серверге барып маалымат алып келүү керек
 1. Тиркемеден суроо талап берилет, аны request деп койот. 
 2. Ал эми cloud серверден келгенди response деп койот.
 3. Биз серверге request жөнөтөбүз ал эми сервер бизге ошого жараша response жөнөтөт.
 Так айтканда биз серверден талап кылган нерсени жөнөтсөк ошого жараша сервер бизге маалыматын берет.
 Эми бизден request жөнөтүлүп response келгенге чейин программа иштеп туруусу үчүн async, await
 деген нерсе колдонулат.
 4. Датаны алып келүүгө fetchData деген асинхронный функция түз,
 5. Функциянын ичине Dio пакетин колдон
 */



