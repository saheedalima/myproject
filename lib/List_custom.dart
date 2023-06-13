import 'package:flutter/material.dart';

class List_custom extends StatelessWidget {

  var colours=[Colors.yellow,Colors.redAccent,Colors.blue,Colors.green,
    Colors.purple,Colors.lightGreenAccent,Colors.lightBlue,Colors.teal,Colors.tealAccent,Colors.transparent,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
        color: colours[index],
        child: const Center(
          child: Icon(Icons.add,size: 50,),
        ),
      ),childCount: 10 ),
        //   childrenDelegate: SliverChildListDelegate(
        // List.generate(10, (index) => Card(
        //   color: colours[index],
        //   child: const Center(
        //     child: Icon(Icons.add,size: 60,),
        //   ),

        ));
      //     [
      //   const Card(color: Colors.redAccent,child: Center(child: Icon(Icons.add),),),
      //   const Card(color: Colors.yellow,child: Center(child: Icon(Icons.add),),),
      //   const Card(color: Colors.green,child: Center(child: Icon(Icons.add),),),
      //   const Card(color: Colors.blueAccent,child: Center(child: Icon(Icons.add),),),
      // ]
     // )

  }
}
