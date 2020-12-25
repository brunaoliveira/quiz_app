import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  Answer(this.text, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: MaterialButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 26),
          // textAlign: TextAlign.center,
        ),
        color: Colors.pink,
        textColor: Colors.white,
        height: 55,
        onPressed: onSelection,
      ),
    );
  }
}
