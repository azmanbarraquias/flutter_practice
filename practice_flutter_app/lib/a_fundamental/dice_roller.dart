import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

  const DiceRoller({super.key});
}

// _ is private used only in this class ^StatefulWidget
final randomGen = Random();
int currentDiceNo = 1;

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = 'assets/dice_images/d1.png';
  final greatText = 'Roll Dice';

  void rollDice() {
    getRandomDiceNo();
    setState(() {
      // Refresh this call build Widget
      activeDiceImage = 'assets/dice_images/d$currentDiceNo.png';
    });

    if (kDebugMode) {
      print(activeDiceImage);
    }
  }

  void getRandomDiceNo() {
    int randomNum;
    do {
      randomNum = 1 + randomGen.nextInt(6);
    } while (currentDiceNo == randomNum);
    currentDiceNo = randomNum;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Default is max
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
          scale: 0.75,
        ),
        TextButton(
          onPressed: () {
            rollDice();
          },
          style: TextButton.styleFrom(
            padding:  const EdgeInsets.all(20),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          child: Text(greatText),
        ),
        ElevatedButton(
            onPressed: () {
              rollDice();
            },
            child: const Text("ElevatedButton")),
        const SizedBox(height: 10),
        OutlinedButton(
            onPressed: () {
              rollDice();
            },
            child: const Text("OutlinedButton"))
      ],
    );
  }
}
