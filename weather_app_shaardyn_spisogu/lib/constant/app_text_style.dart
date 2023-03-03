import 'package:flutter/material.dart';
import 'package:weather_app_shaardyn_spisogu/constant/app_colors.dart';

class AppTextStyle {
  static const appBar = TextStyle(
    color: AppColors.black,
    fontSize: 28,
  );

  static const numberStyle = TextStyle(
      color: AppColors.numberWeatherColor,
      fontSize: 96,
      fontWeight: FontWeight.bold);

  static const description = TextStyle(
      color: AppColors.numberWeatherColor,
      fontSize: 100,
      fontWeight: FontWeight.w300);

  static const cityName = TextStyle(
      color: AppColors.numberWeatherColor,
      fontSize: 86,
      fontWeight: FontWeight.w300);
}
