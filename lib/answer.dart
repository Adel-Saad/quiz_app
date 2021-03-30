import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
// props ...
  final String answer;
  final Function onPressed;

  Answer(this.answer, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        color: Theme.of(context).primaryColor,
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
