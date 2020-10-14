import 'package:flutter/material.dart';

import './widgets/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var currentQuestion = 0;

  void answerQuestion(int answer) {
    this.setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> question = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite Car?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: <Widget>[
          Question(question.elementAt(currentQuestion)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => answerQuestion(2),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => answerQuestion(2),
          )
        ],
      ),
    ));
  }
}
