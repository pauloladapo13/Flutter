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

  void answerQuestion() {
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
      'what\'s your favorite color',
      'what\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp!'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          Answer(answerQuestion),
          Answer(answerQuestion),
          Answer(answerQuestion),
        ]),
      ),
    );
  }
}
