import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
            primary: Colors.teal[600],
            onPrimary: Colors.white,
            elevation: 4.0,
            padding: const EdgeInsets.all(14.0),
            textStyle: const TextStyle(
              fontSize: 16.0,
            )),
      ),
    );
  }
}
