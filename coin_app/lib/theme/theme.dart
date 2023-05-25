import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  textTheme: TextTheme(
    titleMedium: const TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
    titleSmall: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontSize: 20,
    ),
  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  scaffoldBackgroundColor: Colors.grey,
  useMaterial3: true,
);
