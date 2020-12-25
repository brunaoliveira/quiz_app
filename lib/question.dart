import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 5,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
