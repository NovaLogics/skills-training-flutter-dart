import 'package:flutter/material.dart';

// void main() {
//   runApp(AlphaApp());
// }

void main() => runApp(AlphaApp());

class AlphaApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
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
            Text("Question"),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
             child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
             child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
               child: Text("Answer 4"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
