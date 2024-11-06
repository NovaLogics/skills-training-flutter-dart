import 'package:flutter/material.dart';

// void main() {
//   runApp(AlphaApp());
// }

void main() => runApp(AlphaApp());

class AlphaApp extends StatelessWidget {
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
              onPressed: () {},
              child: Text("Answer 1"),
            ),
             ElevatedButton(
              onPressed: () {},
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
