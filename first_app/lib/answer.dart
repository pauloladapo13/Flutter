import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  //  if we attempt to return a value from the call
  // function or pointer at the function
  // final VoidCallback selectHandler; otherwise we use VoidCallback
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text('Answer1'),
        onPressed: selectHandler,
      ),
    );
  }
}
