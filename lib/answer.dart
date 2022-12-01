import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final と const について
  //final = プログラムが実行された段階から変化しない場合に用いる
  //const = コンパイル時に定数であることを明確にするために用いる
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
