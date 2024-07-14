import 'package:flutter/material.dart';
import 'package:medic_map/bottomNav.dart';
import 'package:medic_map/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        home: const CustomBottomNavigationBar());
  }
}
