import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/widgets/answer_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    final question = questions[0];

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(27.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
               itemCount: question.options.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  child: AnswerCard(
                    currentIndex: index,
                    question:question.options[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex,
                  ),
                );
              },
             
            )
          ],
        ),
      ),
    );
  }
}
