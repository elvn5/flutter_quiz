import 'package:flutter/material.dart';
import '../questions.dart';
import 'package:adv_basics/widgets/questions_summary.dart';
import 'package:adv_basics/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.resetQuiz});

  final List<String> chosenAnswers;
  final Function resetQuiz;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": question[i].text,
        "correct_answer": question[i].answers[0],
        "user_answer": chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $numTotalQuestions of $numCorrectQuestions question correctly",
                style: const TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionSummary(summaryData: summaryData),
              const Text(
                "List of answers and questions",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: TextButton(
                    onPressed: () => resetQuiz(),
                    child: const Text(
                      "Restart quiz",
                    )),
              )
            ],
          ),
        ));
  }
}
