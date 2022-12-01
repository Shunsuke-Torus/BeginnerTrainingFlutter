import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerContext;

  Answer({this.selectHandler, this.answerContext});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: ElevatedButton(
          child: Text(
            answerContext,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: selectHandler,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
        ));
  }
}
