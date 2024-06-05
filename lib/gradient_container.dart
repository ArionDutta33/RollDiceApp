import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 2, 80, 5),
          Color.fromARGB(255, 10, 147, 226)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
