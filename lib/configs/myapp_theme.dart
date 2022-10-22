import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyAppThemeConfig {
  final Color primaryColor = Colors.pink.shade400;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color surfaceColor;
  final Color backgroundColor;
  final Color appBarColor;
  final Brightness brightness;

  MyAppThemeConfig.dark()
      : primaryTextColor = Colors.white,
        secondaryTextColor = Colors.white70,
        surfaceColor = const Color(0x0dffffff),
        backgroundColor = const Color.fromARGB(255, 30, 30, 30),
        appBarColor = Colors.black,
        brightness = Brightness.dark;

  MyAppThemeConfig.light()
      : primaryTextColor = Colors.grey.shade900,
        secondaryTextColor = Colors.grey.shade900.withOpacity(0.8),
        surfaceColor = const Color(0x0d000000),
        backgroundColor = Colors.white,
        appBarColor = const Color.fromARGB(255, 235, 235, 235),
        brightness = Brightness.light;

  ThemeData getTheme() {
    return ThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
            backgroundColor: appBarColor, foregroundColor: primaryTextColor),
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: surfaceColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none)),
        textTheme: GoogleFonts.latoTextTheme(TextTheme(
            headline6:
                TextStyle(fontWeight: FontWeight.bold, color: primaryTextColor),
            bodyText2: TextStyle(fontSize: 15, color: primaryTextColor),
            bodyText1: TextStyle(fontSize: 14, color: secondaryTextColor),
            subtitle1: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: primaryTextColor))));
  }
}
