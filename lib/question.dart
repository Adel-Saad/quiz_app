import 'package:flutter/material.dart';
import 'package:udemy_traine_app/Views/home_page.dart';

class Question extends StatelessWidget {
// props ...
  final String questionText;
// constr ...
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 24,
          color: b,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
