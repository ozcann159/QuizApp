import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartScreen(),
  ));
}

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[700],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 240,
          ),
          const Padding(
            padding: EdgeInsets.all(45.0),
            child: Text(
              "QuizApp",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 7,
                  shape: const StadiumBorder(),
                  minimumSize: const Size(130, 40),
                  backgroundColor: Colors.deepOrange[900]),
              onPressed: () {},
              child: const Text(
                'Start',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AutofillHints.location,
                    fontWeight: FontWeight.bold),
              )),
        ],
      )),
    );
  }
}
