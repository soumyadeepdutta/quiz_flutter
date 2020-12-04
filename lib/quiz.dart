import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function next;

  Quiz({this.questionIndex, this.questions, this.next});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map(
                (answer) => Answer(answer['text'], () => next(answer['score'])))
            .toList()
      ],
    );
  }
}
