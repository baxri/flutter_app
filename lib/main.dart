import 'package:flutter/material.dart';

import './widgets/quiz.dart';
import './widgets/result.dart';

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
  int currentQuestion = 0;
  int total = 0;

  final question = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 2},
        {'text': 'Lion', 'score': 3},
        {'text': 'Cow', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favourite Car?',
      'answers': [
        {'text': 'Mercedes', 'score': 1},
        {'text': 'BMW', 'score': 2},
        {'text': 'AUDI', 'score': 3},
        {'text': 'NISSA', 'score': 4},
      ]
    },
  ];

  void answerQuestion(Map answer) {
    total += answer['score'];

    this.setState(() {
      currentQuestion++;
    });
  }

  void reset() {
    this.setState(() {
      currentQuestion = 0;
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hello'),
            ),
            body: currentQuestion < question.length
                ? Quiz(question, currentQuestion, answerQuestion)
                : Result(total, reset)));
  }
}
