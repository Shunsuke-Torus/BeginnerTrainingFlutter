import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _totalScore = 0;
  final _questions = const [
    {
      "questionContext": "ドライアイスは､何が固まったもの？",
      "answers": [
        {"text": "Co2", "score": 1},
        {"text": "H2", "score": 0},
        {"text": "Hg", "score": 0}
      ]
    },
    {
      "questionContext": "4月29日は､何の日?",
      "answers": [
        {"text": "憲法記念日", "score": 0},
        {"text": "春分の日", "score": 0},
        {"text": "昭和の日", "score": 1}
      ],
    },
    {
      "questionContext": "'ドーハの悲劇'の舞台になったドーハとはどこの国の都市 ?",
      "answers": [
        {"text": "サウジアラビア", "score": 0},
        {"text": "カタール", "score": 1},
        {"text": "オマーン", "score": 0},
        {"text": "アラブ首長国連邦", "score": 0},
      ],
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    print("total" + _totalScore.toString());
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuestionIndex() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // @override
  // ステートレスウィジェットが提供するビルドメソッドを意図的に上書きしていることを明確にする｡
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(
                init: _resetQuestionIndex,
                totalScore: _totalScore,
                total: _questions.length,
              ),
      ),
    );
  }
}
