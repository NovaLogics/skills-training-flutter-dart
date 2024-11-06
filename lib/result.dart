import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 8){
      resultText = "You are awesome and innocent!";
    }
    else if(resultScore <= 12){
      resultText = "Pretty Likable!";
    }
     else if(resultScore <= 16){
      resultText = "You are ... Strange?!";
    }
    else{
      resultText = "You are a ... very Strange person?!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
