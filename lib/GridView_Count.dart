import 'package:flutter/material.dart';

class GridView_Count extends StatelessWidget {
  var colours=[Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,
    Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,];

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
      children: List.generate(20, (index) => Container(
        decoration: BoxDecoration(
          color: colours[index],
          borderRadius: BorderRadius.circular(50),
        ),
        margin: EdgeInsets.all(20),
        child: Center(
          child: Text("Hello"),
        ),
      )),);
  }
}
