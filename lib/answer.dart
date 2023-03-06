import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthendler;
  final String answertext;

  Answer(this.selecthendler,this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      margin: EdgeInsets.all(15),
      // padding: EdgeInsets.all(15),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          selecthendler();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(
          answertext,
          style: TextStyle(color: Colors.blue[100]),
        ),
      ),
    );
  }
}
