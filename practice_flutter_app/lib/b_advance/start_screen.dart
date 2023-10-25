import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/deep_quiz_img.png',
              height: 300,
            ),
            const Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                ),
              ),
            )
          ],
        ),
      );
  }

}