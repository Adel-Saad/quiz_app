import 'package:flutter/material.dart';
import 'package:udemy_traine_app/question_list.dart';
import 'package:udemy_traine_app/quiz.dart';
import 'package:udemy_traine_app/result.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

Color w = Colors.white;
Color b = Colors.black26;

class _HomePageState extends State<HomePage> {
// props ...
  // themes ..
  bool isSwitched = false;

  int index = 0;
  int num0, num1, num2 = 0;
  int _totalScore = 0;
//.................
  void answerQuestion(score) {
    if (index == 0)
      num0 = score;
    else if (index == 1)
      num1 = score;
    else if (index == 2) num2 = score;

    _totalScore += score;
    setState(() {
      index++;
    });
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      index = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chevron_left),
        onPressed: () {
          if (index == 1) _totalScore -= num0;
          if (index == 2) _totalScore -= num1;
          if (index == 3) _totalScore -= num2;
          setState(() {
            if (index > 0) {
              index--;
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('No More'),
              ));
            }
          });
        },
      ),
      appBar: AppBar(
        actions: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;

                if (isSwitched) {
                  w = Colors.white;
                  b = Colors.black;
                } else {
                  w = Colors.black;
                  b = Colors.white;
                }
              });
            },
          )
        ],
        title: Text('Quiz App'),
      ),
      body: Container(
        color: w,
        padding: EdgeInsets.all(16),
        height: double.infinity,
        width: double.infinity,
        child: index < questions.length
            ? Quiz(index, answerQuestion, questions)
            : Result(resetQuiz, _totalScore),
      ),
    );
  }
}
