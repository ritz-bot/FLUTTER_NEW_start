import 'package:flutter/material.dart';

import 'package:new_one/gradient_container.dart';
import 'package:new_one/StyledText.dart';
void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      body: GradientContainer(Colors.black, Colors.blue),
    ),
  ));
}


