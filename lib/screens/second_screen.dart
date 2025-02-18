import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String email;  
  final String phone;

  SecondScreen({
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name', style: TextStyle(fontSize: 18)), // Display the name
            SizedBox(height: 16),
            Text('Email: $email', style: TextStyle(fontSize: 18)), // Display the email
            SizedBox(height: 16),
            Text('Phone: $phone', style: TextStyle(fontSize: 18)), // Display the phone number
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the first screen
              },
              child: Text('Back'),

            ),
          ],
        ),
        
      ),
    );
  }
}