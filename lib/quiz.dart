import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final  Function answerQuestion;

  Quiz(this.questionIndex, this.answerQuestion, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questiontext'].toString(),
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['Score']), answer['Text'] as String);
        }).toList()
      ],
    );
  }
}
