import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF006D77);
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF4CAF50);
  static const Color glassColor = Color(0x66000000); // Black with 40% opacity

  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      );
}