import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:myproject/HomePage.dart';
import 'package:myproject/ListView_builder.dart';
import 'package:myproject/Stag_Grid.dart';

class Bottom_navigationBar_Dependency extends StatefulWidget {

  @override
  State<Bottom_navigationBar_Dependency> createState() => _Bottom_navigationBar_DependencyState();
}

class _Bottom_navigationBar_DependencyState extends State<Bottom_navigationBar_Dependency> {
  int index=0;
  var screens=[
    List_with_builder(),
    Stag_Grid(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom_NavigationBar_Dependency"),),
      bottomNavigationBar: ConvexAppBar(  //bottom Navigatin bar onnude design cheyyan vendi use cheyyunnath
          items: const [
            TabItem(icon: Icon(Icons.list)),      //ivide label nirbhandhamilla
            TabItem(icon: Icon(Icons.calendar_today)),
            TabItem(icon: Icon(Icons.assessment)),
          ],
        initialActiveIndex: index,      //current indexinu pakaram ivide ithh
        onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
        },
      ),
      body: Center(
        child: screens[index],
      ),

    );
  }
}
