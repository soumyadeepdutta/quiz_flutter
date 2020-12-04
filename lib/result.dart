import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;

  Result(this.result, this.resetHandler);

  String get resultText {
    return 'You scored ' + result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetHandler,
            child: Text('Reset'),
            color: Colors.blue[300],
          )
        ],
      ),
    );
  }
}
