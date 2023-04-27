import 'package:flutter/cupertino.dart';

class QuestionsScreenState extends StatefulWidget {
  const QuestionsScreenState({super.key});

  @override
  State<QuestionsScreenState> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreenState> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text(
        "Suka",
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      )
    ]);
  }
}
