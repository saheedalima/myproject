import 'package:flutter/material.dart';

class GridView_ex extends StatelessWidget {

  var colours=[Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,];
  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10),
      children: List.generate(10, (index) => Card(
        color: colours[index],
        child: Center(child: Text("Hello"),),
      )),
      //
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10),
      // children: const [
      //   Card(child: Center(child: Text("Hello"),),color: Colors.redAccent,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.blueAccent,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.blue,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.black,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.white,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.yellow,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.purple,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.orange,),
      //   Card(child: Center(child: Text("Hello"),),color: Colors.green,),
      // ],
    );
  }
}
