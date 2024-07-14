import 'package:flutter/material.dart';
import 'package:medic_map/utils/themes.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: const Text(
          'Report',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Hospital: Marvel Hospital',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Address: Skull Island',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Doctor: Tony Stark',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Divider(
              color: MyTheme.baseColor,
              thickness: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
