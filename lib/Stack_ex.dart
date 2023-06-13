import 'package:flutter/material.dart';

class Stack_ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Stack(
        children: [
          Container(color: Colors.green,),
          Container(color: Colors.redAccent,width: 300,height: 300,),
          Container(color: Colors.blueAccent,width: 200,height: 200,),
          Positioned(top: 200,left: 200,
              child: Container(color: Colors.white,width: 100,height: 100,)),
          Positioned(top: 300,left: 300,
              child: Container(color: Colors.purpleAccent,width: 50,height: 50,)),
        ],
      ),),
    );
  }
}
