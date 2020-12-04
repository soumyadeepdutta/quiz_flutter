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
      'answer': ['Yellow', 'Blue', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal??',
      'answer': ['Elephant', 'Rabbit', 'Dog']
    },
  ];
  var _questionIndex = 0;

  void _nextIndex() {
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
          : Result(),
    );
  }
}
