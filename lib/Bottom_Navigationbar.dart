import 'package:flutter/material.dart';
import 'package:myproject/GridView_Custom.dart';
import 'package:myproject/HomePage.dart';
import 'package:myproject/ListView_builder.dart';
import 'package:myproject/Stag_Grid.dart';

class Bottom_Navigationbar extends StatefulWidget {  //state maarunnathukond stful aakkanam

  @override
  State<Bottom_Navigationbar> createState() => _Bottom_NavigationbarState();
}

class _Bottom_NavigationbarState extends State<Bottom_Navigationbar> {

  int index=0;
  var screens=[
    List_with_builder(),
    GridView_Custom(),
    HomePage(),
    Stag_Grid()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar"),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,  //fixed koduthal oru backcoloril ellam varum
                                                 //fixedil tab chang chryyilla
          backgroundColor: Colors.blueGrey,
          onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
          },
          currentIndex: index,
          items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.greenAccent,
            icon: Icon(Icons.app_blocking_outlined),label: "Prfile"),  //label must be added.if it is not
        BottomNavigationBarItem(
            backgroundColor: Colors.greenAccent,
            icon: Icon(Icons.camera),label: "Story"),
        BottomNavigationBarItem(
            backgroundColor: Colors.purpleAccent,
            icon: Icon(Icons.camera_alt_rounded),label: "Status"),
        BottomNavigationBarItem(
            backgroundColor: Colors.orangeAccent,
            icon: Icon(Icons.unarchive),label: "Add"),
      ]),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
