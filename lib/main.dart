import 'package:flutter/material.dart';

main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
          centerTitle: true,
        ),
        body: Text('Henllo'),
      ),
      darkTheme: ThemeData(
        accentColor: Colors.pinkAccent,
        brightness: Brightness.dark,
      ),
    );
  }
}
