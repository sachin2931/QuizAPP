import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questiontext': 'what\'s your favorite color',
      'answer': [
        {'Text': 'Blue', 'Score': 9},
        {'Text': 'Black', 'Score': 10},
        {'Text': 'Maroon', 'Score': 9},
        {'Text': 'Yellow', 'Score': 5},
      ]
    },
    {
      'questiontext': 'what\'s your favrite animal',
      'answer': [{'Text': 'Cat', 'Score': 10},
        {'Text': 'Cow', 'Score': 8},
        {'Text': 'Dog', 'Score': 5},
        {'Text': 'Lion', 'Score': 10},]
    },
    {
      'questiontext': 'what\'s your favrite food',
      'answer': [{'Text':'Pizza', 'Score': 5},
        {'Text': 'Manchurian', 'Score': 1},
        {'Text': 'Chicken-legpiece', 'Score': 4},
        {'Text': 'milk', 'Score': 4},]
    },
    {
      'questiontext': 'what\'s your favrite drink',
      'answer': [{'Text': 'Beer', 'Score': 1},
        {'Text': 'Wine', 'Score': 2},
        {'Text': 'Vodka', 'Score': 6},
        {'Text': 'Rum', 'Score': 9},]
    },
    {
      'questiontext': 'what\'s your favrite city',
      'answer': [{'Text': 'GOA', 'Score': 1},
        {'Text': 'Ratanpur-border', 'Score': 10},
        {'Text': 'ABU', 'Score': 8},
        {'Text':  'DIU', 'Score': 6},]
    }
  ];
  var questionIndex = 0;
  var totalscore = 0;

  void _reset(){
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void _answerq(int Score) {

    totalscore += Score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    // if (questionIndex < questions.length) {}
  }

  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'APP',
          ),
        ),
        body: questionIndex < questions.length
            ? Quiz(questionIndex, _answerq, questions)
            : Result(totalscore,_reset),
      ),
    );
  }
}
