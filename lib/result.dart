import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
          child: Text(
            'Total points: ${totalScore * 100}',
            style: TextStyle(fontSize: 26),
          ),
        ),
        Center(
          child: Image.asset('assets/dino.gif'),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: RaisedButton(
            color: Colors.pink,
            textColor: Colors.white,
            child: Text(
              'Try again',
              style: TextStyle(fontSize: 22),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
