import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resethandler;

  Result(this.resultscore,this.resethandler);

  String get resultphase {
    String resulttext;
    if (resultscore <= 10) {
      resulttext = 'You Are Bad';
    } else if (resultscore <= 20) {
      resulttext = 'You Are Strange';
    } else if (resultscore <= 30) {
      resulttext = 'You Are Good';
    } else {
      resulttext = 'You Are OK';
    }

    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(resultphase,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
            ),
            TextButton(onPressed: resethandler, child: Text('Restart Quiz!'))
          ],
        ),
    );
  }
}
