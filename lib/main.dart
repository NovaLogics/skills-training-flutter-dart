import 'package:flutter/material.dart';
import 'package:flutter_alpha/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(AlphaApp());

class AlphaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlphaAppState();
  }
}

class _AlphaAppState extends State<AlphaApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What's your favorite colour?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 7},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ]
    },
    {
      "questionText": "What's your favorite Animal?",
      "answers": [
        {"text": "Rabbit", "score": 3},
        {"text": "Cat", "score": 4},
        {"text": "Dog", "score": 5},
        {"text": "Lion", "score": 9},
      ]
    },
    {
      "questionText": "What's your favorite Engineer?",
      "answers": [
        {"text": "Nova", "score": 2},
        {"text": "Nova", "score": 2},
        {"text": "Nova", "score": 2},
        {"text": "Nova", "score": 2},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Alpha App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
