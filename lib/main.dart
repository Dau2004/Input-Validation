import 'package:flutter/material.dart';
import 'screens/first_screen.dart';

void main() {
  // Entry point of the application
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Input Validation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: FirstScreen(), // Start with the first screen
    );
  }
}