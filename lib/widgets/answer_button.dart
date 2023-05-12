import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;

  const AnswerButton(
      {required this.buttonText, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: const Color.fromRGBO(188, 52, 194, 1.0),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Text(buttonText),
    );
  }
}
