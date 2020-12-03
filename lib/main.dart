import 'package:flutter/material.dart';

import './question.dart';

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

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Q1', 'Q2', 'Q3', 'Q4'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola Mundo!'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('Answer 2 Chosen'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () {
                print('Answer 3 Chosen');
              },
            )
          ],
        ),
      ),
    );
  }
}
