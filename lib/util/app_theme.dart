
import 'package:flutter/material.dart';
import 'package:specialcalculator/util/colors.dart';
import 'package:specialcalculator/util/fonts.dart';

class AppThemeData {
  static ThemeData themeData = ThemeData(
      primaryColor: AppColors.primaryColor,
      splashColor: AppColors.splashColor,
      highlightColor: AppColors.highlightColor,
      fontFamily: Fonts.fontName,
      dividerColor: AppColors.grey,
      colorScheme: const ColorScheme(
        primary: AppColors.accentColor,
        primaryVariant: AppColors.accentColor,
        secondary: AppColors.accentColor,
        secondaryVariant: AppColors.accentColor,
        surface: AppColors.accentColor,
        background: AppColors.accentColor,
        error: AppColors.red,
        onPrimary: AppColors.primaryColor,
        onSecondary: AppColors.accentColor,
        onSurface: AppColors.accentColor,
        onBackground: AppColors.white,
        onError: AppColors.red,
        brightness: Brightness.light,
      ),
      indicatorColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.white,
//TextTheme
      textTheme: const TextTheme(
        caption: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        button: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
//ElevatedButtonThemeData
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
//IconThemeData
      iconTheme: const IconThemeData(
        color: AppColors.accentColor,
        size: 24.0,
      ),
// textButtonTheme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            primary: AppColors.primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
      ));
}
