import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback init;
  final int totalScore;
  final int total;

  Result({required this.init, required this.totalScore, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
          child: Text(
            "Thank you for playing.",
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            "正答数:" +
                totalScore.toString() +
                "/" +
                total.toString() +
                "\n"
                    "正答率:" +
                (((totalScore / total) * 100).round()).toString() +
                "%",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: init,
            child: Text(
              "init",
            ),
          ),
        ),
      ],
    );
  }
}
