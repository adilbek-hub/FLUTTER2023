import 'package:flutter/material.dart';
import 'package:news_app/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  //WidgetFlutterBinding ал Flutter кыймылдаткычы менен иштешүү үчүн колдонулат.
  //Firebase.initializeApp()Firebaseди инициализациялоо үчүн түпнуска кодду
  //чалуу керек жана плагин түпнуска кодду чакыруу үчүн платформа каналдарын
  // колдонушу керек болгондуктан, ал асинхрондуу түрдө аткарылат, ошондуктан
  //ensureInitialized()сизде WidgetsBinding.
  WidgetsFlutterBinding.ensureInitialized();
  // // Flutter проектиге Firebaseти инициализациялоо
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.ios,
  );

  runApp(const MyApp());
}
