import 'package:flutter/material.dart';
import './result.dart';
import './survey.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'text':
          'On a map with a scale of 1:25000, how many kilometers are represented by one centimeter?',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '2.5', 'score': 0},
        {'text': '25', 'score': 0},
        {'text': '25000', 'score': 1},
      ]
    },
    {
      'text': 'What colour is the spot in the middle of the Japanese flag?',
      'answers': [
        {'text': 'White', 'score': 0},
        {'text': 'Red', 'score': 1},
        {'text': 'Maroon', 'score': 0},
        {'text': 'Teal', 'score': 0},
      ]
    },
    {
      'text':
          'In which country would you be if you were visiting the Taj Mahal?',
      'answers': [
        {'text': 'Indonesia', 'score': 0},
        {'text': 'Ireland', 'score': 0},
        {'text': 'India', 'score': 1},
        {'text': 'Israel', 'score': 0},
      ]
    },
    {
      'text': 'In which country is the world\'s longest river, the Nile?',
      'answers': [
        {'text': 'Egypt', 'score': 1},
        {'text': 'Brazil', 'score': 0},
        {'text': 'Lybia', 'score': 0},
        {'text': 'Russia', 'score': 0},
      ]
    },
    {
      'text': 'What does each star on the flag of the United States stand for?',
      'answers': [
        {'text': 'Years of civil war', 'score': 0},
        {'text': 'Number of states', 'score': 1},
        {'text': 'Chapters in the Bible', 'score': 0},
        {'text': 'Number of presidents', 'score': 0},
      ]
    },
    {
      'text': 'The Danube flows into what body of water?',
      'answers': [
        {'text': 'Red Sea', 'score': 0},
        {'text': 'Mediterranean Sea', 'score': 0},
        {'text': 'Aral Sea', 'score': 0},
        {'text': 'Black Sea', 'score': 1},
      ]
    },
    {
      'text': 'In which country is the world\'s highest waterfall?',
      'answers': [
        {'text': 'Brazil', 'score': 0},
        {'text': 'Venezuela', 'score': 1},
        {'text': 'Canada', 'score': 0},
        {'text': 'United States', 'score': 0},
      ]
    },
    {
      'text': 'What is the smallest country in the world?',
      'answers': [
        {'text': 'San Marino', 'score': 0},
        {'text': 'Tuvalu', 'score': 0},
        {'text': 'Monaco', 'score': 0},
        {'text': 'Vatican City', 'score': 1},
      ]
    },
    {
      'text': 'What is the highest mountain in Britain?',
      'answers': [
        {'text': 'Ben Macdui', 'score': 0},
        {'text': 'Ben Lawers', 'score': 0},
        {'text': 'Ben Nevis', 'score': 1},
        {'text': 'Beinn Mheadhoin', 'score': 0},
      ]
    },
    {
      'text': 'Which city would you visit to see Gaudi\'s architecture?',
      'answers': [
        {'text': 'Barcelona', 'score': 1},
        {'text': 'Valencia', 'score': 0},
        {'text': 'Madrid', 'score': 0},
        {'text': 'Seville', 'score': 0},
      ]
    },
    {
      'text': 'What is the unit of currency of Poland?',
      'answers': [
        {'text': 'Krone', 'score': 0},
        {'text': 'Złoty', 'score': 1},
        {'text': 'Koruna', 'score': 0},
        {'text': 'Haléř', 'score': 0},
      ]
    },
    {
      'text':
          'By what name is the former country of South West Africa now known?',
      'answers': [
        {'text': 'Namibia', 'score': 1},
        {'text': 'Lesoto', 'score': 0},
        {'text': 'Congo', 'score': 0},
        {'text': 'Rwanda', 'score': 0},
      ]
    },
    {
      'text': 'The Sahara Desert extends into how many countries?',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '13', 'score': 0},
      ]
    },
    {
      'text':
          'Ship\'s captains are empowered to conduct what two religious rites?',
      'answers': [
        {'text': 'Burials and Baptisms', 'score': 1},
        {'text': 'Burials and Wedings', 'score': 0},
        {'text': 'Wedings and Bar Mitzvahs', 'score': 0},
        {'text': 'Wedings and Bat Mitzvahs', 'score': 0},
      ]
    },
    {
      'text': 'What is the world\'s largest continent?',
      'answers': [
        {'text': 'North America', 'score': 0},
        {'text': 'Antarctica', 'score': 0},
        {'text': 'Africa', 'score': 0},
        {'text': 'Asia', 'score': 1},
      ]
    },
    {
      'text': 'In which country is the ancient city of Petra?',
      'answers': [
        {'text': 'Jordan', 'score': 1},
        {'text': 'Israel', 'score': 0},
        {'text': 'Egypt', 'score': 0},
        {'text': 'Syria', 'score': 0},
      ]
    },
    {
      'text': 'What is the fastest flowing river in the world?',
      'answers': [
        {'text': 'Congo', 'score': 0},
        {'text': 'Amazon', 'score': 1},
        {'text': 'Orinoco', 'score': 0},
        {'text': 'Ganges', 'score': 0},
      ]
    },
    {
      'text': 'What is the oldest active volcano on Earth?',
      'answers': [
        {'text': 'Mount Vesuvius', 'score': 0},
        {'text': 'Kilawea', 'score': 0},
        {'text': 'Mount Etna', 'score': 1},
        {'text': 'Krakatoa', 'score': 0},
      ]
    },
    {
      'text': 'What is the largest city located on two continents?',
      'answers': [
        {'text': 'Orenburg', 'score': 0},
        {'text': 'Suez', 'score': 0},
        {'text': 'Cairo', 'score': 0},
        {'text': 'Istanbul', 'score': 1},
      ]
    },
    {
      'text':
          'What is the only territory of the mainland Americas that still belongs to a European country?',
      'answers': [
        {'text': 'Fawklands', 'score': 0},
        {'text': 'Guadeloupe', 'score': 0},
        {'text': 'French Guiana', 'score': 1},
        {'text': 'Puerto Rico', 'score': 0},
      ]
    },
  ];

  bool get hasRemainingQuestion {
    return _selectedQuestion < _questions.length;
  }

  void _answer(int score) {
    if (hasRemainingQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
  }

  void _restartSurvey() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default font family.
        fontFamily: 'Calibri',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Geography quiz',
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: hasRemainingQuestion
            ? Survey(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                onAnswer: _answer,
              )
            : Result(_totalScore, _restartSurvey),
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
