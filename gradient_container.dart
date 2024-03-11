import 'package:flutter/material.dart';
import 'package:new_one/StyledText.dart';
import 'package:new_one/dice_roller.dart';

const startAlignment = Alignment.bottomCenter;
const  endAlignment = Alignment.bottomRight;
// final means it will never attain any other value
//with the help of constructor function, we can make a custom widget reusable
//this.text is used to refer to the object which will be built on top of a class
// named arguements are optional in dart
//list can be edited in dart

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2,{super.key});



  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,

        ),
      ),
      child: Center(

        child:DiceRoller(),
      ),
    );
  }
}

