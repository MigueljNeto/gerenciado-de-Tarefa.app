import 'package:flutter/material.dart';

class AppTheme {
  static const Color purpleNeon = Color(0xFF9B2FFF);
  static const Color pinkVibrant = Color(0xFFFF3CF0);
  static const Color blueElectric = Color(0xFF3C8DFF);
  static const Color lightGray = Color(0xFFF2F2F2);

  static ThemeData vibrantTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: lightGray,

    primaryColor: purpleNeon,

    // Cor de destaque global
    colorScheme: const ColorScheme.light(
      primary: purpleNeon,
      secondary: pinkVibrant,
      tertiary: blueElectric,
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: blueElectric,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: pinkVibrant),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: blueElectric),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: purpleNeon, width: 2),
      ),
      labelStyle: const TextStyle(color: purpleNeon),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blueElectric,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: purpleNeon,
      foregroundColor: Colors.white,
      elevation: 6,
    ),
  );
}
