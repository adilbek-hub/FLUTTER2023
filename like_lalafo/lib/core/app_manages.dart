import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppManager {
  AppManager._();
  static AppManager instance = AppManager._();

  Future<SharedPreferences> preferences() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> setThemeMode({required ThemeMode themeMode}) async {
    final prefs = await preferences();
    await prefs.setInt('themeMode', themeMode.index);
  }

  Future<ThemeMode?> getThemeMode() async {
    final prefs = await preferences();
    int? themeModeIndex = prefs.getInt('themeMode');
    if (themeModeIndex != null) {
      return ThemeMode.values[themeModeIndex];
    }
    return null;
  }
}
