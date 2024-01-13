import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/widgets/answer_card.dart';
import 'package:quiz_app/widgets/next_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;
  bool get isLastQuestion =>
      questionIndex == questions.length - 1; // Doğru tanımlama

  void pickAnswer(int value) {
    setState(() {
      selectedAnswerIndex = value;
      final question = questions[questionIndex];

      if (selectedAnswerIndex == question.correctAnswerIndex) {
        score++;
      }
    });
  }

  void goToResultScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen(score: score)),
    );
  }

  void goToNextQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultScreen(score: score)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.options.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.options[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex,
                  ),
                );
              },
            ),
            isLastQuestion
                ? NextButton(
                    onPressed: selectedAnswerIndex != null || isLastQuestion
                        ? goToNextQuestion
                        : null,
                    label: isLastQuestion ? 'Finish' : 'Next',
                  )
                : NextButton(
                    onPressed:
                        selectedAnswerIndex != null ? goToNextQuestion : null,
                    label: 'Next'),
          ],
        ),
      ),
    );
  }
}
