import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/widgets/next_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score/10',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: CircularProgressIndicator(
                    strokeWidth: 12,
                    value: score / 10,
                    color: Colors.lightGreen,
                    backgroundColor: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '$score/10',
                      style: const TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${(score / 10 * 100).round()}%',
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            NextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => QuizScreen()),
                );
              },
              label: 'Restart',
            ),
          ],
        ),
      ),
    );
  }
}
