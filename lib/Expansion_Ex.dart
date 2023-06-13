import 'package:flutter/material.dart';

class Expansion_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expansion Tile"),),
      body: const ExpansionTile(
          title: Text("Colours"),
        subtitle: Text("Expand to view more"),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.purpleAccent,),
            title: Text("purple"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.redAccent,),
            title: Text("red"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.greenAccent,),
            title: Text("greenAccent"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
            title: Text("blueAccent"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.yellowAccent,),
            title: Text("yellowAccent"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.orangeAccent,),
            title: Text("orangeAccent"),
          )
        ],
      ),
    );
  }
}
