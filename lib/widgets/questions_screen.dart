import 'package:flutter/material.dart';
import "../questions.dart";
import "./answer_button.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void handleTap(String answer) {
    widget.onSelectAnswer(answer);
    if (currentQuestionIndex != 3) {
      setState(() {
        ++currentQuestionIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentQuestionIndex];

    final List<Widget> answers = currentQuestion
        .getShuffledList()
        .map((e) => AnswerButton(buttonText: e, onTap: () => handleTap(e)))
        .toList();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...answers
          ]),
    );
  }
}
