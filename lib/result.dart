import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result({
    @required this.score,
    @required this.resetQuiz,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "you did it with score $score ",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "reset quiz ☺",
                style: TextStyle(
                  fontFamily: "italic",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: resetQuiz,
            )
          ],
        ));
  }
}
