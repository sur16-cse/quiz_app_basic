import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: selectHandler,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
          ),
          child: Text(answerText)),
    );
  }
}
