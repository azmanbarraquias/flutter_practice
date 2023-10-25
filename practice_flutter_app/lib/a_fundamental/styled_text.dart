import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  final String text;

  const StyledText({this.text = "null", super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 28.69,
          fontStyle: FontStyle.italic,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    );
  }
}
