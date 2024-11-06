import 'package:flutter/material.dart';

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
      "What's your favorite colour?",
      "What's your favorite Animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Alpha App"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions.elementAt(_questionIndex)
              ),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 4"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
