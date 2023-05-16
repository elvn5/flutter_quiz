import 'package:adv_basics/widgets/questions_screen.dart';
import 'package:adv_basics/widgets/start_screen.dart';
import 'package:flutter/material.dart';
import '../questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = "start_screen";
  var selectedAnswers = [];

  void switchScreen() {
    setState(() {
      if (selectedAnswers.length == 3) {
        return;
      }
      activeScreen = "questions_screen";
    });
  }

  void chooseAnswer(String answer) {
    bool isFinished = selectedAnswers.length == question.length;

    if (!isFinished) {
      selectedAnswers.add(answer);
    }

    if (isFinished) {
      setState(() {
        selectedAnswers = [];
        activeScreen = "start_screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == "start_screen"
        ? StartScreen(switchScreen)
        : QuestionScreen(onSelectAnswer: chooseAnswer);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
