import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qtext;

  Question(this.qtext);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Text(
          qtext,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
