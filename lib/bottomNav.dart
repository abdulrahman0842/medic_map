import 'package:flutter/material.dart';
import 'package:medic_map/pages/home.dart';
import 'package:medic_map/pages/profile_page.dart';
import 'package:medic_map/pages/report_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  List<Widget> widgets = [
    const HospitalList(),
    const ReportScreen(),
    const ProfilePage(),
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgets.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_drive_file_outlined), label: 'Report'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile')
        ],
        currentIndex: selectedIndex,
        onTap: onTapped,
      ),
    );
  }
}
