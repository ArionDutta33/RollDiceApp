import 'dart:math';

import 'package:flutter/material.dart';

final ramdomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  //do not add  a build method
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//private class internal use
class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1;

  void rollDice() {
    diceRoll = ramdomizer.nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-${diceRoll}.png",
          width: 150.2,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text("Roll dice"),
        )
      ],
    );
  }
}
