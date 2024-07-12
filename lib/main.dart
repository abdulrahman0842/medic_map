import 'package:flutter/material.dart';
import 'package:medic_map/bottomNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(colorSchemeSeed: Color(0xFF083F6D)),
        debugShowCheckedModeBanner: false,
        home: CustomBottomNavigationBar());
  }
}
