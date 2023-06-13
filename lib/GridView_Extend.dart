import 'package:flutter/material.dart';

class GridView_Extend extends StatelessWidget {
  var colours=[Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,
    Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,];


  @override
  Widget build(BuildContext context) {
    return GridView.extent(maxCrossAxisExtent: 50,
    children: List.generate(20, (index) => Stack(
      children: [
        Container(
          color: colours[index],
        ),
        const Center(
          child: Icon(Icons.ac_unit_outlined,
          size: 30,),
        ),
      ],

    )),);
  }
}
