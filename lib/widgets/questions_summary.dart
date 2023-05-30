import 'package:flutter/cupertino.dart';
import 'package:adv_basics/widgets/question_answer.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return QuestionAnswer(
                question: e["question"] as String,
                correctAnswer: e["correct_answer"] as String,
                questionCount: ((e["question_index"] as int) + 1),
                userAnswer: e["user_answer"] as String);
          }).toList(),
        ),
      ),
    );
  }
}
