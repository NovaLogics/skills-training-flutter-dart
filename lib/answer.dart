import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        child: Text("Answer 1"),
        onPressed: null,
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          onPrimary: Colors.white, 
        ),
      ),
    );
  }
}
