import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  Answer(this.text, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            text,
            style: TextStyle(fontSize: 26),
            // textAlign: TextAlign.center,
          ),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: onSelection),
    );
  }
}
