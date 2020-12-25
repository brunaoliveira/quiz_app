import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Survey extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) onAnswer;

  Survey({
    @required this.questions,
    @required this.selectedQuestion,
    @required this.onAnswer,
  });

  bool get hasRemainingQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        hasRemainingQuestion ? questions[selectedQuestion]['answers'] : null;

    return Column(
      children: [
        Question(
            '${selectedQuestion + 1}. ${questions[selectedQuestion]['text']}'),
        ...answers // spread operator
            .map((answer) {
          return Answer(
            answer['text'],
            () => onAnswer(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
