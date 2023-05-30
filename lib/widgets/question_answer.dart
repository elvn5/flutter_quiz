import 'package:flutter/material.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer(
      {super.key,
      required this.question,
      required this.correctAnswer,
      required this.questionCount,
      required this.userAnswer});

  final int questionCount;
  final String question;
  final String correctAnswer;
  final String userAnswer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.amberAccent,
          child: Text(
            questionCount.toString(),
            style: const TextStyle(
                backgroundColor: Colors.amberAccent,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.red),
          ),
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question,
              style: const TextStyle(
                  color: Color.fromRGBO(200, 200, 200, 1), fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Correct answer $correctAnswer",
              style: const TextStyle(color: Colors.green),
            ),
            Text("Your answer $userAnswer",
                style: const TextStyle(color: Colors.blue)),
          ],
        ))
      ],
    );
  }
}
