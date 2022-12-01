import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  // @override = コードをわかりやすくスッキリするためにある
  // ステートレスウィジェットが提供するビルドメソッドを意図的に上書きしていることを明確にする｡
  @override
  Widget build(BuildContext context) {
    // Map()
    var questions = [
      {
        "questionContext": "What's your favorite color ?",
        "answers": ["Red", "Blue", "Violet"]
      },
      {
        "questionContext": "What's your favorite animal ?",
        "answers": ["Cow", "Monkey", "human"],
      },
      {
        "questionContext": "What's your favorite game ?",
        "answers": [
          "Splatoon",
          "Mario Garaxy",
          "Super Smash Bros",
          "Resident Evil",
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(
            questionContext: questions[_questionIndex]["questionContext"],
          ),
          ...(questions[_questionIndex]["answers"] as List<String>)
              .map((answer) {
            return Answer(
                selectHandler: _answerQuestion, answerContext: answer);
          }).toList()
        ]),
      ),
    );
  }
}
