import 'package:flutter/material.dart';

class MyTheme {
  static Color baseColor = const Color(0xFF083F6D);
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: baseColor),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF083F6D),
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
          iconTheme: IconThemeData(color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: baseColor, unselectedItemColor: Colors.grey));
}
