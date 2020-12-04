import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final _questions = [
    {
      'questionText': 'What\'s your favourite color??',
      'answer': [
        {'text': 'Yellow', 'score': 2},
        {'text': 'Blue', 'score': 4},
        {'text': 'Black', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal??',
      'answer': [
        {'text': 'Elephant', 'score': 4},
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Dog', 'score': 2}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetScore() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _nextIndex(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        centerTitle: true,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              next: _nextIndex,
            )
          : Result(_totalScore, _resetScore),
    );
  }
}
