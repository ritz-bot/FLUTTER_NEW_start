import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
@override



  State<DiceRoller> createState() {
  return _DiceRollerState();
}

}

class _DiceRollerState extends State<DiceRoller>{

  var currentDice=2;

  void rolldice(){
    setState(() {
        currentDice=randomizer.nextInt(6)+1;
    });
    print(currentDice);
  }


  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDice.png',
            width: 200),
        const SizedBox(height: 20),
        TextButton(onPressed: rolldice,
            style: TextButton.styleFrom(foregroundColor: Colors.white,
                backgroundColor: Colors.black,textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text('final_hai_bhai'))
      ],
    );
  }


}
