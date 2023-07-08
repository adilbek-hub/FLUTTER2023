import 'package:education/views/pages_nav_bar.dart';
import 'package:education/views/home_view.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // checkerboardOffscreenLayers: true,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomeView(),
        'BooksView': (context) => const NavBarPages(),
      },
    );
  }
}
