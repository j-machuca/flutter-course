import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,

    // Appbar Theming
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),
    // Button theming
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primaryColor),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.indigo,

      // Appbar Theming
      appBarTheme: const AppBarTheme(
        color: primaryColor,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
