import 'package:flutter/material.dart';

class TravellingUi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(child: const Text("Places",textAlign: TextAlign.start,)),
            Card(
              child: Stack(
                children: [
                  Image.asset("assets/Icons/flutter_icon.png"),
                  const Positioned(top: 200,
                      child: Text("America"))
                ],
              ),
            ),
            Card(
              child: Stack(
                children: [
                  Image.asset("assets/Icons/flutter_icon.png"),
                  const Positioned(top: 200,
                      child: Text("Japan"))
                ],
              ),
            ),
            Card(
              child: Stack(
                children: [
                  Image.asset("assets/Icons/flutter_icon.png"),
                  const Positioned(top: 200,
                      child: Text("India"))
                ],
              ),
            ),
            Card(
              child: Stack(
                children: [
                  Image.asset("assets/Icons/flutter_icon.png"),
                  const Positioned(top: 200,
                      child: Text("Newziland"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
