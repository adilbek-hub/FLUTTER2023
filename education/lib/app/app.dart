import 'package:education/pages/login_page.dart';
import 'package:education/views/pages_nav_bar.dart';
import 'package:education/views/home_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginPage(),
        'HomeView': (context) => const HomeView(),
        'BooksView': (context) => const NavBarPages(),
      },
    );
  }
}
