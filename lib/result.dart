import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "😊 You're sweet and calm! \nPeople feel relaxed around you.";
    } 
    else if (resultScore <= 12) {
      resultText =
          "👍 You're friendly and easygoing! \nPeople like being around you.";
    } 
    else if (resultScore <= 16) {
      resultText =
          "😎 You're fun and a little adventurous! \nYou bring excitement.";
    } 
    else if (resultScore <= 20) {
      resultText = "🔥 You're bold and unique! \nPeople always remember you.";
    } 
    else {
      resultText = "🌌 You're one-of-a-kind! \nMysterious and super interesting.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text("Restart Quiz"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal,
              primary: Colors.black,
              textStyle: const TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
