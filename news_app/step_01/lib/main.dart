import 'package:flutter/material.dart';
import 'package:step_01/app/app.dart';
//https://newsapi.org/docs/endpoints/everything => API Key  үчүн сайт.
//https://newsapi.org/v2/everything?q=%D0%9A%D1%8B%D1%80%D0%B3%D1%8B%D0%B7%D1%81%D1%82%D0%B0%D0%BD&apiKey=2d01e9e3d28d4189b48461be856e9655 => nPoint

// 1  http: ^0.13.5 / url_launcher: ^6.1.6 / share_plus: ^6.0.0 ПАКЕТТЕРИН жүктөө
// 2   url_launcher үчүн android жана iOSко  Configuration жүктөө
// 3 Дата, NPoint, Линк, Свет, Текстовый стиль жана башка үчүн папкаларды файлдарды даярдоо
// 4 NewsAPIга модель түзөбүз
// БИЗ ӨЗҮБҮЗГӨ КЕРЕКТҮҮ ПАПКАЛАРДЫ ДАЯРДАП АЛДЫК. ЭМИ ДАРТ ФАБРИКА МЕНЕН ИШТЕП КӨРӨЛҮ. БУГА ДАРТ КОД МЕНЕН ИШТЕП АЛАБЫЗ. => factory_metod

void main() {
  runApp(const MyApp());
}


