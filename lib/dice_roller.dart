import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; // netxInt(6) will give value from 0-5 so to make it 1-6, added 1
    });
    // print('Changing image'); //for debug console
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', //use $ to inject a variable inside a string,
          width: 200,
        ),
        const SizedBox(
            height: 20), // alternative -- padding:const EdgeInsets.all(20),
        TextButton(
          onPressed:
              rollDice, //passing a pointer to hte previously defined function. not executing it here just pointing to it.
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text('Roll Dice!'),
        )
      ],
    );
  }
}
