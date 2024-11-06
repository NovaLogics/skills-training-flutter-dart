import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["questionText"] as String // ?? ''
            ),
        ...(questions[questionIndex]["answers"] as List<String>).map(
          (answer) {
            return Answer(answerQuestion, answer);
          },
        ).toList(),
      ],
    );
  }
}
