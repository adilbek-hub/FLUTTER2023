// lib/core/theme/theme_repository.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository {
  static const String themeModeKey = 'theme_mode';

  Future<ThemeMode> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt(themeModeKey) ?? ThemeMode.system.index;
    return ThemeMode.values[themeIndex];
  }

  Future<void> saveTheme(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(themeModeKey, themeMode.index);
  }
}
