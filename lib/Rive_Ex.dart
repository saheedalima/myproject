import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(home: SimpleAnimation()));
}

class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
          child: Center(
            child: RiveAnimation.asset(     //network link vach link adress copy cheyth network imag add cheyyam
              'assets/animation/Rive.riv',
            ),
          ),
        ),
          Container(
            height: 300,
            width: double.infinity,
            child: Center(
              child: RiveAnimation.asset(     //network link vach link adress copy cheyth network imag add cheyyam
                'assets/animation/Rive.riv',
              ),
            ),
          ),
    ]),
    );
  }
}