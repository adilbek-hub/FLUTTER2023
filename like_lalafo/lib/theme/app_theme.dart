import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:like_lalafo/theme/color_constants.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorConstants.white,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: ColorConstants.white,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    cardColor: ColorConstants.white,
    cardTheme: const CardTheme(
        surfaceTintColor: ColorConstants.white, color: ColorConstants.white),
    colorScheme: ColorScheme.light(
        primary: ColorConstants.primary,
        onPrimary: ColorConstants.white,
        secondaryContainer: ColorConstants.primary.withOpacity(0.6),
        brightness: Brightness.light),
    expansionTileTheme: const ExpansionTileThemeData(
        textColor: ColorConstants.black,
        shape: RoundedRectangleBorder(side: BorderSide.none)),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      side: const BorderSide(color: ColorConstants.primary),
    )),
    radioTheme: const RadioThemeData(),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(ColorConstants.primary),
      fillColor: WidgetStateProperty.all(ColorConstants.lightGrey),
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 14,
          color: ColorConstants.grey,
        ),
      ),
    ),
  );
}
