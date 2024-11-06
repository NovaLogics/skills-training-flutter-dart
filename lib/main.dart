import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(AlphaApp());

class AlphaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlphaAppState();
  }
}

class _AlphaAppState extends State<AlphaApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Alpha App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
                questions[_questionIndex]["questionText"] as String // ?? ''
                ),
            ...(questions[_questionIndex]["answers"] as List<String>).map(
              (answer) {
                return Answer(_answerQuestion, answer);
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}
