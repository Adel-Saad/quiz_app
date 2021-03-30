import 'package:flutter/material.dart';
import 'package:udemy_traine_app/answer.dart';
import 'package:udemy_traine_app/question.dart';

class Quiz extends StatelessWidget {
// props...
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;

// constr ...

  Quiz(this.index, this.answerQuestion, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Question(questions[index]['question']),
        SizedBox(
          height: 24,
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((value) {
          return Answer(value['text'], () => answerQuestion(value['score']));
        }).toList(),
      ],
    );
  }
}
