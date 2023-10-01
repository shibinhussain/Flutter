import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState() extends State<DiceRoller>{

  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice(){
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(activeDiceImage),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.all(25),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('SUBMIT'),
          ),
        ],
      );
  }
}

//Not working