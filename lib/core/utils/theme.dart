import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.beigeColor,
  fontFamily: 'Poppins',

  colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.redPinkMain,
      onPrimary: Colors.white,
      secondary: AppColors.pink,
      onSecondary: AppColors.pinkSub,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.beigeColor,
      onSurface: Colors.white
  ),
    appBarTheme: AppBarTheme(
    backgroundColor: AppColors.beigeColor,
  surfaceTintColor: Colors.transparent
)
);