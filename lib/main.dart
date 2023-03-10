import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore=0;

  void _resetQuiz(){
    setState((){
      _questionIndex=0;
      _totalScore=0;
    });

  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 8},
        {'text': 'yellow', 'score': 6}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Dog', 'score': 10},
        {'text': 'Lion', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favorite place',
      'answers': [
        {'text': 'Delhi', 'score': 3},
        {'text': 'Bangalore', 'score': 9},
        {'text': 'Mumbai', 'score': 10},
        {'text': 'Kolkata', 'score': 2},
      ],
    }
  ];
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
