import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stag_Grid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4, //nere nere ethrennam venamennulla count
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,  //width //ith mukalil koduthathinu anusarich ivide kodutha width adjust aavum
                mainAxisCellCount: 3,  //height //ith mukalil koduthathinu anusarich ivide kodutha height adjust aavum
                child: Container(
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.lightGreen,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.redAccent,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.white12,
                  child: Center(
                    child: Text("Helloo.."),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
