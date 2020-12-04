import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  Result(this.result);

  String get resultText {
    return 'You scored ' + result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
