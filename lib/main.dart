import 'package:flutter/material.dart';

main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  void answer() {
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
            Text('Henllo'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer,
            ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Question 2 answered.');
                }),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Question 3 answered.'),
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
