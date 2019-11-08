import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function onChooseAnswer;

  Answer({
    @required this.answer,
    @required this.onChooseAnswer,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answer,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: onChooseAnswer,
        color: Colors.blue,
      ),
    );
  }
}
