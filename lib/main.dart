import 'package:flutter/material.dart';

// void main() {
//   runApp(AlphaApp());
// }

void main() => runApp(AlphaApp());

class AlphaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Alpha App"),
        ),
        body: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
