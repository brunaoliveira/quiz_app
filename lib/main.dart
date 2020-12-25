import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'text': 'What is your favourite colour?',
        'answers': ['Black', 'Blue', 'Green', 'Pink']
      },
      {
        'text': 'What is your favourite food?',
        'answers': ['Barbecue', 'Pasta', 'Pizza', 'Sushi']
      },
      {
        'text': 'What is your favourite animal?',
        'answers': ['Cat', 'Dog', 'Horse', 'Rabbit']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]),
            Answer('Answer 1', _answer),
            Answer('Answer 2', _answer),
            Answer('Answer 3', _answer),
          ],
        ),
      ),
      darkTheme: ThemeData(
        accentColor: Colors.pinkAccent,
        brightness: Brightness.dark,
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
