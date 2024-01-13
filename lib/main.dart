import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/startScreen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
