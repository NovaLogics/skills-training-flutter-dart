import 'package:flutter/material.dart';
import 'package:flutter_alpha/quiz.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() => runApp(AlphaApp());

class AlphaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlphaAppState();
  }
}

class _AlphaAppState extends State<AlphaApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      "questionText": "What's your favorite colour?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favorite Animal?",
      "answers": ["Rabbit", "Cat", "Dog", "Lion"]
    },
    {
      "questionText": "What's your favorite Engineer?",
      "answers": ["Nova", "Nova", "Nova", "Nova"]
    },
  ];

  void _answerQuestion() {
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
            : const Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
