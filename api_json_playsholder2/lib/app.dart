import 'package:api_json_playsholder2/home/photos_page.dart';
import 'package:api_json_playsholder2/home/posts_page.dart';
import 'package:api_json_playsholder2/home/users_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PhotoPage(),
    );
  }
}
