import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionContext;

  Question({this.questionContext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      child: Text(
        questionContext,
        style: TextStyle(
          fontSize: 30,
          color: Colors.orange,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
