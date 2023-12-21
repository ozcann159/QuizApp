import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuestionsScreen(),
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
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_right_alt),
            label: Text("Start"),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: EdgeInsets.all(18),
              backgroundColor: Colors.orange[900],
            ),
          )
        ],
      )),
    );
  }
}

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<QuestionsScreen> {
  String question = "Soru 1";

  void changeQuestion() {
    setState(() {
      question = "Soru 2";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(question),
            TextButton.icon(
                onPressed: () {
                  changeQuestion();
                },
                icon: const Icon(Icons.account_balance_sharp),
                label: const Text("Cevap"))
          ],
        ),
      ),
    );
  }
}
