import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(
   home: Second(),
 ));
}
class Second extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Second"),
      ),
    );
  }
}
