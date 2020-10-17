import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final Map text;

  Answer(this.selectHandler, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(text['text'].toString()),
        onPressed: () => selectHandler(text),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
