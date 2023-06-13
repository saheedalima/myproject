import 'package:flutter/material.dart';

class Status_Ui extends StatelessWidget {

  var names =["Wazi","Jamshi","Sathar","Reji","Saheed","Badusha","Midhlaj","Binshan"];
  var photos=["assets/Icons/Nitheesh.png",
    "assets/Icons/Nitheesh.png","assets/Icons/Nitheesh.png",
    "assets/Icons/Nitheesh.png","assets/Icons/Nitheesh.png",
    "assets/Icons/Nitheesh.png","assets/Icons/Nitheesh.png",
    "assets/Icons/Nitheesh.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Status"),),
      body: Column(

        children: [
          ListTile(title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
            leading: Stack(children: [
              Image.asset("assets/Icons/Nitheesh.png"),
              Positioned(top: 25,left: 25,
                  child: Icon(Icons.add,color: Colors.red,))
            ],
            ),
          ),
          Container(child: Text("Recent Updates",textAlign: TextAlign.start,),),
          ListView.builder(
            shrinkWrap: true,
              itemBuilder: (context,int){
            return Card(
              child: ListTile(title: Text(names[int]),
                leading: Image.asset(photos[int])
              ),
            );
          },itemCount: names.length)
        ],
      ),
    );
  }
}
