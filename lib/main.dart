import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  final questions = const [
    {
      'question': 'Q1',
      'answers': ['A1.1', 'A1.2']
    },
    {
      'question': 'Q2',
      'answers': ['A2.1', 'A2.2', 'A2.3']
    },
    {
      'question': 'Q3',
      'answers': ['A3.1', 'A3.2', 'A3.3', 'A3.4']
    }
  ];

  void _answerQuestion() {
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
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['question'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) => Answer(_answerQuestion, answer))
                      .toList()
                ],
              )
            : Center(
                child: Text('END'),
              ),
      ),
    );
  }
}
