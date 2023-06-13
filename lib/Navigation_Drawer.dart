import 'package:flutter/material.dart';

class Navigation_Drawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigatin Drawer"),),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.lightBlueAccent),
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Icons/Background2.jpg"))
                ),
                  accountName: Text("Saheed"),
                  accountEmail: Text("saheedalima318@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/Icons/flutter_icon.png"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(backgroundImage: AssetImage("assets/Icons/flutter_icon.png"),),
                    CircleAvatar(backgroundImage: AssetImage("assets/Icons/flutter_icon.png"),),
                ],
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt_rounded),
                title: Text("Abc"),
              ),
              ListTile(
                leading: Icon(Icons.settings_accessibility),
                title: Text("Wallet"),
              ),
              ListTile(
                leading: Icon(Icons.person_off),
                title: Text("Settings"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.abc_outlined),
                title: Text("About"),
              )],
          ),
        ),
      ),           //drawer leftinn varum, End drawer rightinn varum
    );
  }
}
