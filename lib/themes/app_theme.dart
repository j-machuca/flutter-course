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
    // Floating Action Buttons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 0,
    ),
    // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
    // Inputs

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primaryColor,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
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
