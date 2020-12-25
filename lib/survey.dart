import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Survey extends StatelessWidget {
  final String text;
  final List answers;
  final Function answerFunction;
  Survey(this.text, this.answers, this.answerFunction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(text),
        ...answers // spread operator
            .map((text) => Answer(text, answerFunction))
            .toList(),
      ],
    );
  }
}
