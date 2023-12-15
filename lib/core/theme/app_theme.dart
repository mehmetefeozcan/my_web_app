import 'package:flutter/material.dart';
import 'package:my_web_app/core/constants/index.dart';

@immutable
class AppTheme {
  const AppTheme();
  static final lightTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'SourceSansPro',
    snackBarTheme: const SnackBarThemeData(
      actionTextColor: ColorConstants.onError,
      backgroundColor: ColorConstants.onPrimary,
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: ColorConstants.white,
      ),
      elevation: 1,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
      headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
      titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      onPrimary: ColorConstants.onPrimary,
      primary: ColorConstants.primary,
      secondary: ColorConstants.secondary,
      onSecondary: ColorConstants.onSecondary,
      error: ColorConstants.error,
      onError: ColorConstants.onError,
      background: ColorConstants.background,
      onBackground: ColorConstants.onBackground,
      surface: ColorConstants.surface,
      onSurface: ColorConstants.onSurface,
    ),
  );
  static final darkTheme = ThemeData(
    fontFamily: 'SourceSansPro',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
      headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
      titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      onPrimary: ColorConstants.onPrimary,
      primary: ColorConstants.primary,
      secondary: ColorConstants.secondary,
      onSecondary: ColorConstants.onSecondary,
      error: ColorConstants.error,
      onError: ColorConstants.onError,
      background: ColorConstants.background,
      onBackground: ColorConstants.onBackground,
      surface: ColorConstants.surface,
      onSurface: ColorConstants.onSurface,
    ),
  );
}
