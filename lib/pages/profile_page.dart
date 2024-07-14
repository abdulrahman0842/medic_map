import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "Tony Stark";
  int age = 25;
  String gender = "Male";
  String address = "Stark Tower, Manhattan, 200 Park Avenue";
  String mobile = "123-456-7890";
  String aadhaarNumber = "1234 5678 9012";
  String email = "tony_stark991@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: const Text(
          'Account',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProfileInfo('Name', name),
              _buildProfileInfo('Age', age.toString()),
              _buildProfileInfo('Gender', gender),
              _buildProfileInfo('Address', address),
              _buildProfileInfo('Mobile', mobile),
              _buildProfileInfo('Aadhaar Number', aadhaarNumber),
              _buildProfileInfo('Email', email),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Update Password',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: _showSignOutConfirmationDialog,
                  child: const Text(
                    'SignOut',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800]),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: Colors.grey[600]),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  void _showSignOutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Sign Out!'),
          content: const Text('Are you sure you want to sign out?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Sign Out'),
            ),
          ],
        );
      },
    );
  }
}
