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
  List <String> question = [

  ];

  void changeQuestion() {
    setState(() {
      question = question;
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
            ...answers.map((answer) => ElevatedButton(
                onPressed: () {},
                child: Text(
                  answer,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )))
          ],
        ),
      ),
    );
  }
}
