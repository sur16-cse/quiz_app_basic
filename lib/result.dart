import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 18) {
      resultText = 'You are so bad';
    } else if (resultScore <= 22) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 25) {
      resultText = "You are sweet and positive person";
    } else {
      resultText = "You are best and awesome";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
