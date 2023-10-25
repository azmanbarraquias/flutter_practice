import 'package:flutter/material.dart';
import 'package:flutter_test_app/b_advance/start_screen.dart';

void main() {
  runApp(const DeepQuiz());
}

class DeepQuiz extends StatelessWidget {
  const DeepQuiz({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 137, 54, 220),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 78, 13, 151),
                ],
              ),
            ),
            child: const StartScreen()),
      ),
    );
  }
}
