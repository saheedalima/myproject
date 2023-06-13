import 'package:flutter/material.dart';

class Expanded_Demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.blue,)),  //available aayulla remaining space full edukkan-Expanded
          Expanded(child: Container(height: 200,width: 200,color: Colors.red,)),
          Container(height: 100,width: 100,color: Colors.yellow,),

          ///ith Rowil kodukuanenki width full aayi edukkum
          ///couthil heightinu efect illla
          ///rawil widthinu effect illa
        ],
      ),
    );
  }
}
