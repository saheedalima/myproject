import 'package:flutter/material.dart';

class Sliver_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,   //appbar movable aakkn
            pinned: false,     //oru area scroll aavandirikkan //app barinte thazh eullath movakkan
            title: Text("Sliver AppBar"),
            bottom: AppBar(
              backgroundColor: Colors.orangeAccent,
              elevation: 0,   //oru vara varum ath avoid cheyyan
              //preffered size    - app barinte size koottan
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const TextField(decoration: InputDecoration(
                  hintText: "Search Here",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt),
                ),),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) =>
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.green),
            child: Center(child: Text("Inside Sliver List $index ",style: TextStyle(fontSize: 20),)),
          ),
              ),childCount: 20,
          ))
        ],

      ),
    );
  }
}
