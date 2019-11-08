import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _currentIndex = 0;
      _totalScore = 0;
    });
  }

  Widget _renderQuiz(int currentIndex, int questionsLength) {
    if (currentIndex < questionsLength) {
      return Quiz(
          question: questions[currentIndex]["question"],
          answers:
              (questions[currentIndex]['answers']) as List<Map<String, Object>>,
          onAnswer: _onAnswer);
    }
    return Result(score: _totalScore, resetQuiz: _resetQuiz);
  }

  void _onAnswer(int score) {
    setState(() {
      _currentIndex++;
      _totalScore += score;
    });
  }

  var questions = [
    {
      "question": "What's your fav. club ?",
      "answers": [
        {"answerText": "ahly", "score": 10},
        {"answerText": "barca", "score": 5},
        {"answerText": "madrid", "score": 10},
        {"answerText": "milan", "score": 5},
      ]
    },
    {
      "question": "What's your fav. player ?",
      "answers": [
        {"answerText": "ronaldo", "score": 10},
        {"answerText": "messi", "score": 5},
        {"answerText": "pele", "score": 7},
        {"answerText": "maradona", "score": 7},
      ]
    },
    {
      "question": "What's your fav. animal ?",
      "answers": [
        {"answerText": "rabbit", "score": 10},
        {"answerText": "monkey", "score": 5},
        {"answerText": "lion", "score": 10},
        {"answerText": "elephant", "score": 10},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    var widget = _renderQuiz(_currentIndex, questions.length);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz app"),
          ),
          body: widget),
    );
  }
}
