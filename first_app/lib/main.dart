// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    // ignore: avoid_print
    print(_questionIndex);

    // ignore: avoid_print
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favorite color',
        'answers': ['Rabbit', 'Snake', 'Elelphant', 'Lion'],
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp!'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]['questionText'] as String,
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ]),
      ),
    );
  }
}
