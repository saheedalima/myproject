import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myproject/MyWidget.dart';

class Stag_Grid_2 extends StatelessWidget {

  var count=[1,2,3,2,3,1,3,2,3,1,2,1,3,2,1,3,2,3,1,2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(   //StaggeredGrid ith oru bodyil add cheyyan pattilla ath veroru widgetinte child
                                    //aayi kodukkanam athanu SingleChildScrollView
        child: StaggeredGrid.count(
            crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
          children: List.generate(20, (index) => StaggeredGridTile.count(   //corresponding predictions varunnillenki widgetil
                                                                           //cursor vachitt add required prperties kodukkuka
            crossAxisCellCount: count[index],   //oro indexilum pala sizil varaan
            mainAxisCellCount: 2,
            child: MyWidget(myimage: Image.asset("assets/Icons/flutter_icon.png"),
              mycolor: Colors.orangeAccent,
            ),
          )),
        ),
      ),
    );
  }
}
