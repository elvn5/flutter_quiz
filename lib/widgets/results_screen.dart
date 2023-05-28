import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.resetQuiz});

  final List<String> chosenAnswers;
  final Function resetQuiz;

  @override
  Widget build(BuildContext context) {
    print(chosenAnswers);

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "You answered X of Y question correctly",
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "List of answers and questions",
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: TextButton(
                    onPressed: () => resetQuiz(),
                    child: Text(
                      "Restart quiz",
                    )),
              )
            ],
          ),
        ));
  }
}
