import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText =
          "😊 You're sweet and calm! \nPeople feel relaxed around you.";
    } else if (resultScore <= 25) {
      resultText =
          "👍 You're friendly and easygoing! \nPeople like being around you.";
    } else if (resultScore <= 32) {
      resultText =
          "😎 You're fun and a little adventurous! \nYou bring excitement.";
    } else if (resultScore <= 38) {
      resultText = "🔥 You're bold and unique! \nPeople always remember you.";
    } else {
      resultText =
          "🌌 You're one-of-a-kind! \nMysterious and super interesting.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 16.0),
            padding: const EdgeInsets.all(2.0),
            child: Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(24.0),
            child: TextButton(
              onPressed: resetHandler,
              child: const Text("Restart Quiz"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.cyan[500],
                primary: Colors.black,
                padding: const EdgeInsets.all(12.0),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
