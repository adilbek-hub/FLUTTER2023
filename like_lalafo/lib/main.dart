import 'package:flutter/material.dart';
import 'package:like_lalafo/initial_main.dart';
import 'package:like_lalafo/router/router.dart';
import 'package:like_lalafo/theme/app_theme.dart';

Future<void> main() async {
  Widget widget = await InitialMain.initialMain(const MyApp());
  runApp(widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lightTheme,
      routerConfig: AppRouter().config(),
    );
  }
}
