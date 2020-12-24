import 'package:flutter/material.dart';
import './question.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print('Question answered!');
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'What is your favourite colour?',
      'What is your favourite food?',
      'What is your favourite animal?',
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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answer,
            ),
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
