import "package:adv_basics/questions.dart";
import 'package:flutter/material.dart';
import "package:adv_basics/widgets/answer_button.dart";
import "package:adv_basics/models/quiz_question.dart";

class QuestionsScreenState extends StatefulWidget {
  const QuestionsScreenState({super.key});

  @override
  State<QuestionsScreenState> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreenState> {
  final currentQuestion = 0;
  void handleTap() {
    print(1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Text(
        "The question",
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        height: 80,
      ),
      // question.map((e) => {
      //   return Text("");
      // }).toList()
    ]);
  }
}
