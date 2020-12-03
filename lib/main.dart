import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = const [
    {
      'question': 'Q1',
      'answers': [
        {'text': 'A1.1', 'score': 1},
        {'text': 'A1.2', 'score': 2}
      ]
    },
    {
      'question': 'Q2',
      'answers': [
        {'text': 'A2.1', 'score': 1},
        {'text': 'A2.2', 'score': 2},
        {'text': 'A2.3', 'score': 3}
      ]
    },
    {
      'question': 'Q3',
      'answers': [
        {'text': 'A3.1', 'score': 1},
        {'text': 'A3.2', 'score': 2},
        {'text': 'A3.3', 'score': 3},
        {'text': 'A3.4', 'score': 4}
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola Mundo!'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex)
            : Result(resultScore: _totalScore, resetQuiz: _resetQuiz),
      ),
    );
  }
}
