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
      "questionText": "How do you prefer to spend your free time?",
      "answers": [
        {"text": "Reading a book", "score": 3},
        {"text": "Going on an adventure", "score": 8},
        {"text": "Relaxing at home", "score": 5},
        {"text": "Meeting friends", "score": 7}
      ]
    },
    {
      "questionText": "Which weather do you enjoy the most?",
      "answers": [
        {"text": "Sunny", "score": 6},
        {"text": "Rainy", "score": 4},
        {"text": "Snowy", "score": 8},
        {"text": "Windy", "score": 5}
      ]
    },
    {
      "questionText": "What kind of movies do you prefer?",
      "answers": [
        {"text": "Action", "score": 7},
        {"text": "Comedy", "score": 4},
        {"text": "Drama", "score": 5},
        {"text": "Science Fiction", "score": 9}
      ]
    },
    {
      "questionText": "Which quality do you value the most in others?",
      "answers": [
        {"text": "Honesty", "score": 3},
        {"text": "Bravery", "score": 9},
        {"text": "Kindness", "score": 5},
        {"text": "Intelligence", "score": 7}
      ]
    },
    {
      "questionText": "What is your ideal vacation spot?",
      "answers": [
        {"text": "Beach", "score": 5},
        {"text": "Mountains", "score": 7},
        {"text": "City", "score": 6},
        {"text": "Countryside", "score": 3}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
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
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}
