import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState((){
    activeDiceImage = 'assets/images/dice-4.png';
    });
    //print('Changing image'); //for debug console
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
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
