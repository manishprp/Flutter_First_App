import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_flutter_project/styles/text_styles_and_colors.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var imageOfDice = 'assets/images/dice-1.png';
  var currentIndex = 1;
  late Random random;
  void rollDice() {
    setState(() {
      currentIndex = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentIndex.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(239, 216, 90, 90),
          ),
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: kSmallSizeTextStyle,
          ),
        ),
      ],
    );
  }
}
