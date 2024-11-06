import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

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
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              () => answerQuestion(answer["score"] as int),
              answer["text"] as String,
            );
          },
        ).toList(),
      ],
    );
  }
}
