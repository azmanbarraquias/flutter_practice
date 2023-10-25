import 'package:flutter/material.dart';

import 'dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Alignment startAlignment = Alignment.topCenter;
// var endAlignment = Alignment.bottomCenter;
// Alignment? alignment; // can be null or alignment value


class GradientContainer extends StatelessWidget {


  final List<Color> gradientColor;

  const GradientContainer(this.gradientColor, {super.key});

  // Create Constructor
  GradientContainer.goldRed({super.key})
      : gradientColor = [Colors.black87, Colors.white, Colors.black12];


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Container cannot be const
        gradient: LinearGradient(
          colors: gradientColor,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
