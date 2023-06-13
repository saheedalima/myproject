
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottie_Animation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Lottie.asset("assets/animation/16401-forest-morning.json",fit: BoxFit.fill),  //boxfit- parentinu anusarich imagefita aava

      ),
    );
  }
}
