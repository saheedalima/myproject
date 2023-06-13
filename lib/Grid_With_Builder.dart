import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Grid_Builder(),));
}
class Grid_Builder  extends StatelessWidget {
  var colours=[Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,
    Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 70), itemBuilder: (context,index){
        return  Card(
          color: colours[index],
          child: Center(
            child: Text("Hello"),
          ),
        );
      },itemCount: 20),
    );
  }
}
