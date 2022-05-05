// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp!'),
        ),
        body: Column(children: [
          Text('The question!'),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(child: Text('Answer2'), onPressed: answerQuestion),
          RaisedButton(
            child: Text('Answer3'),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
