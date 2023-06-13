import 'package:flutter/material.dart';

class GridView_Custom extends StatelessWidget {
  var colours=[Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent];

  @override
  Widget build(BuildContext context) {
    return
      GridView.custom(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10
    ),
        childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
          color: colours[index],
          child: Center(
    child: Text("Hello"),
    )
    )));
        SliverChildListDelegate(
         // [] or
          List.generate(10, (index) => Card(
            color: colours[index],
            child: Text("Hello"),
          ))
        );
  }
}
