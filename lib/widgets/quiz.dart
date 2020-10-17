import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List question;
  final int currentQuestion;
  final Function answerQuestion;

  Quiz(this.question, this.currentQuestion, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[currentQuestion]['questionText']),
        ...(question[currentQuestion]['answers'] as List).map((e) {
          return Answer(answerQuestion, e);
        }).toList()
      ],
    );
  }
}
