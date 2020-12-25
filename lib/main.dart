import 'package:flutter/material.dart';
import './result.dart';
import './survey.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  final List<Map<String, Object>> _questions = const [
    {
      'text':
          'On a map with a scale of 1:25000, how many kilometers are represented by one centimeter?',
      'answers': ['1', '2.5', '25', '25000']
    },
    {
      'text': 'What colour is the spot in the middle of the Japanese flag?',
      'answers': ['White', 'Red', 'Maroon', 'Teal']
    },
    {
      'text':
          'In which country would you be if you were visiting the Taj Mahal?',
      'answers': ['Indonesia', 'Ireland', 'India', 'Israel']
    },
    {
      'text': 'In which country is the world\'s longest river, the Nile?',
      'answers': ['Egypt', 'Brazil', 'Lybia', 'Russia']
    },
    {
      'text': 'What does each star on the flag of the United States stand for?',
      'answers': [
        'Years of civil war',
        'Number of states',
        'Chapters in the Bible',
        ''
      ]
    },
    {
      'text': 'The Danube flows into what body of water?',
      'answers': ['Red Sea', 'Mediterranean Sea', 'Aral Sea', 'Black Sea']
    },
    {
      'text': 'In which country is the world\'s highest waterfall?',
      'answers': ['Brazil', 'Venezuela', 'Canada', 'United States']
    },
    {
      'text': 'What is the smallest country in the world?',
      'answers': ['San Marino', 'Tuvalu', 'Monaco', 'Vatican City']
    },
    {
      'text': 'What is the highest mountain in Britain?',
      'answers': ['Ben Macdui', 'Ben Lawers', 'Ben Nevis', 'Beinn Mheadhoin']
    },
    {
      'text': 'Which city would you visit to see Gaudi\'s architecture?',
      'answers': ['Barcelona', 'Valencia', 'Madrid', 'Seville']
    },
    {
      'text': 'What is the unit of currency of Poland?',
      'answers': ['Krone', 'Złoty', 'Koruna', 'Haléř']
    },
    {
      'text':
          'By what name is the former country of South West Africa now known?',
      'answers': ['Namibia', 'Lesoto', 'Congo', 'Rwanda']
    },
    {
      'text': 'The Sahara Desert extends into how many countries?',
      'answers': ['3', '5', '10', '13']
    },
    {
      'text':
          'Ship\'s captains are empowered to conduct what two religious rites?',
      'answers': [
        'Burials and baptisms',
        'Burials and wedings',
        'Wedings and Bar Mitzvahs',
        'Wedings and Bat Mitzvahs'
      ]
    },
    {
      'text': 'What is the world\'s largest continent?',
      'answers': ['North America', 'Antarctica', 'Africa', 'Asia']
    },
    {
      'text': 'In which country is the ancient city of Petra?',
      'answers': ['Jordan', 'Israel', 'Egypt', 'Syria']
    },
    {
      'text': 'What is the fastest flowing river in the world?',
      'answers': ['Congo', 'Amazon', 'Orinoco', 'Ganges']
    },
    {
      'text': 'What is the oldest active volcano on Earth?',
      'answers': ['Mount Vesuvius', 'Kilawea', 'Mount Etna', 'Krakatoa']
    },
    {
      'text': 'What is the largest city located on two continents?',
      'answers': ['Orenburg', 'Suez', 'Cairo', 'Istanbul']
    },
    {
      'text':
          'What is the only territory of the mainland Americas that still belongs to a European country?',
      'answers': ['Fawklands', 'Guadeloupe', 'French Guiana', 'Puerto Rico']
    },
  ];

  bool get hasRemainingQuestion {
    return _selectedQuestion < _questions.length;
  }

  void _answer() {
    if (hasRemainingQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default font family.
        fontFamily: 'Georgia',
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
            : Result(),
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
