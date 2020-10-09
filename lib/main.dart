import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion(String answer) {
    print(answer);
  }

  @override
  Widget build(BuildContext context) {
    List<String> question = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: <Widget>[
          Text(question.elementAt(0)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => answerQuestion('one'),
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => answerQuestion('two'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => answerQuestion('tree'),
          )
        ],
      ),
    ));
  }
}
