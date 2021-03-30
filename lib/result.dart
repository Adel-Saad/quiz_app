import 'package:flutter/material.dart';
import 'package:udemy_traine_app/Views/home_page.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int resultScore;

  String get resultText {
    String text;
    if (resultScore >= 70) {
      text = 'Awesome .. !!';
    } else if (resultScore >= 40) {
      text = 'Likable .. ';
    } else {
      text = 'Bad';
    }
    return text;
  }

  // constr ...
  Result(this.reset, this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score is ${resultScore}',
            style: TextStyle(fontSize: 24, color: b),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            resultText,
            style: TextStyle(fontSize: 36, color: b),
          ),
          SizedBox(
            height: 24,
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Theme.of(context).primaryColor,
            onPressed: reset,
            child: Text(
              'Restart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
