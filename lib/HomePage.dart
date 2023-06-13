import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Contacts"),
      actions: const [
        Icon(Icons.search),
        SizedBox(width: 20,),
        Icon(Icons.camera),
      ],),
      body: ListView(
        children: [
          Card(
            color: Colors.green,
              child: ListTile(title: const Text("Anu"),
            subtitle: const Text("1234567890"),
           // leading: Icon(Icons.contactless_sharp),
            leading: const CircleAvatar(backgroundImage: AssetImage("assets/Icons/Picsart.png"),),
            trailing: Wrap(children: const [   // onnil kooduthal add cheyyan.ithinu pakaram raw add cheyyam.
              Icon(Icons.message),
              SizedBox(width: 20),  //idakk gap varuthaan. paddinginu pakaram.
              Icon(Icons.phone),
            ] ),
          )),
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(30)),),
            child: ListTile(title: const Text("jithu"),
            subtitle: const Text("1234567890"),
            leading: const CircleAvatar(backgroundImage: AssetImage("Icon(Icons.phone)"),),
            trailing: Wrap(children: const [
              Icon(Icons.message),
              SizedBox(width: 20,),
              Icon(Icons.phone),
            ],),),
          ),
        ],
      ),
    );
  }
}
