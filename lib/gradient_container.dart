import 'package:flutter/material.dart';
import 'package:new_flutter_project/dice_roller.dart';

// Gradient container this sets the background as a gradient
class GradientContainer extends StatelessWidget {
  GradientContainer(this.colorUpIn, this.colorDownIn, {super.key});
  final Color colorUpIn;
  final Color colorDownIn;
  var imageOfDice = 'assets/images/dice-1.png';
  void rollDice() {
    imageOfDice = 'assets/images/dice-2.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colorUpIn, colorDownIn],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
