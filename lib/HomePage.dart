import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Contacts"),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 20,),
        Icon(Icons.camera),
      ],),
      body: ListView(
        children: [
          Card(
            color: Colors.green,
              child: ListTile(title: Text("Anu"),
            subtitle: Text("1234567890"),
           // leading: Icon(Icons.contactless_sharp),
            leading: const CircleAvatar(backgroundImage: AssetImage("assets/Icons/Picsart.png"),),
            trailing: Wrap(children: const [   // onnil kooduthal add cheyyan.ithinu pakaram raw add cheyyam.
              Icon(Icons.message),
              SizedBox(width: 20),  //idakk gap varuthaan. paddinginu pakaram.
              Icon(Icons.phone),
            ] ),
          )),
          Text("Jithu"),
          Text("Joseph"),
          Text("Philip"),
        ],
      ),
    );
  }
}
