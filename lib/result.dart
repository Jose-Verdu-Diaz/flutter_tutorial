import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int resultScore;

  Result({@required this.resultScore, @required this.resetQuiz});

  String get resultPhrase {
    String resultText;
    resultScore < 8 ? resultText = 'SUSPENSO' : resultText = 'APROBADO';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Rerstart Quiz'))
        ],
      ),
    );
  }
}
