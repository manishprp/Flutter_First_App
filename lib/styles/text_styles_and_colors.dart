import 'package:flutter/material.dart';

// this is a text style it sets the style of the text with the defined values
const TextStyle kSmallSizeTextStyle =
    TextStyle(fontSize: 14, color: Colors.white);

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imageOfDice,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(240, 206, 175, 175),
              ),
              onPressed: rollDice,
              child: const Text(
                'Roll Dice',
                style: kSmallSizeTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
