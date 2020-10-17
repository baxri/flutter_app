import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function reset;

  Result(this.total, this.reset);

  String get resolveResult {
    String resultText = 'You did it!';

    if (total <= 8) {
      resultText = 'You are awesome and innocent!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resolveResult,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          onPressed: reset,
          child: Text('Reset'),
        )
      ],
    ));
  }
}
