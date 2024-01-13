import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6802db),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/quiz-logo.png",
              width: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "QuizApp",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => QuizScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start", style: TextStyle(fontSize: 20)),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(50, 15, 60, 15)),
            )
          ],
        ),
      ),
    );
  }
}
