import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      background: AppColors.primary),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.text),
    bodyMedium: TextStyle(color: AppColors.text),
    bodySmall: TextStyle(color: AppColors.text),
    titleLarge: TextStyle(color: AppColors.text),
    titleMedium: TextStyle(color: AppColors.text),
    titleSmall: TextStyle(color: AppColors.text),
    labelLarge: TextStyle(color: AppColors.text),
    labelMedium: TextStyle(color: AppColors.text),
    labelSmall: TextStyle(color: AppColors.text),
    displayLarge: TextStyle(color: AppColors.text),
    displayMedium: TextStyle(color: AppColors.text),
    displaySmall: TextStyle(color: AppColors.text),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: AppColors.background,
    textTheme: ButtonTextTheme.primary,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.background,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    iconTheme: IconThemeData(
      color: AppColors.background,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.primary,
  ),
  scaffoldBackgroundColor: AppColors.background,
);
