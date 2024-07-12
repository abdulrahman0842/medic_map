import 'package:flutter/material.dart';

const Color darkBluecolor = Color(0xFF083F6D);

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: darkBluecolor,
        title: const Text('Report', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Hospital: Marvel Hospital',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Address: Skull Island',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Doctor: Tony Stark',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Divider(
              color: darkBluecolor,
              thickness: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
