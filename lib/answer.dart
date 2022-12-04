import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final と const について
  //final = プログラムが実行された段階から変化しない場合に用いる
  //const = コンパイル時に定数であることを明確にするために用いる
  final VoidCallback selectHandler;
  final String answerContext;

  Answer({required this.selectHandler, required this.answerContext});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
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
