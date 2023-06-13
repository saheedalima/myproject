import 'package:flutter/material.dart';

class List_with_builder extends StatelessWidget {

  var names =["Anu","Jithu","Philip","Joseph","Anu","Jithu","Philip","Joseph"];
  var numbers=[1234567890,0987654321,5678904321,543216789,1234567890,0987654321,5678904321,543216789];
  var photos=["assets/Icons/Picsart.png",
    "assets/Icons/Picsart.png","assets/Icons/Picsart.png",
  "assets/Icons/Picsart.png","assets/Icons/Picsart.png",
    "assets/Icons/Picsart.png","assets/Icons/Picsart.png",
    "assets/Icons/Picsart.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Contacts"),
        actions: const [
          Icon(Icons.camera),
          SizedBox(width: 20,),
          Icon(Icons.search)
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true, //kodukkunna widget parentinte sizinoth align aavan.size adjust aavum
              physics: ScrollPhysics(),
              itemBuilder: (context, int){  //here int is position,
                                           // itembuilderis connector of widget tree
              return Card(
                child: ListTile(
                  title: Text(names[int]), //int means representing the positions in list
                  subtitle: Text("${numbers[int]}"),
                  leading: Image.asset(photos[int]),
                  trailing: Wrap(
                    children: const [
                      Icon(Icons.message),
                      SizedBox(width: 20,),
                      Icon(Icons.phone),
                    ],
                  ),
                ),
              );
            },itemCount: names.length,),
          ),
        ],
      ),  //listinte total length edukkan.
                                    //oruppad data undenki error kittum athukond
    );
  }
}
