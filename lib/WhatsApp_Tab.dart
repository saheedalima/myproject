import 'package:flutter/material.dart';
import 'package:myproject/HomePage.dart';
import 'package:myproject/ListView_builder.dart';
import 'package:myproject/LoginPage.dart';

void main(){
  runApp(MaterialApp(home: WhatsAppTab(),));
}
class WhatsAppTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("WhatsApp"),
          bottom: TabBar(
            isScrollable: true,        //kodutha size settavan,tab bar scroll aavanum.
           //indicatorSize: TabBarIndicatorSize.label, //labelinte sizinu anusarich indicatrinte size varaan
            labelPadding: EdgeInsets.zero,   //no use of padding,tabinu padding varaathirikkan.
              tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.1,  //oro tabsinum separate size varuthaan.
                child: Tab(icon: Icon(Icons.people_alt_rounded),)),
            SizedBox(
              width: MediaQuery.of(context).size.width*.3,
                child: Tab(text: "Chats",)),
            SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(text: "Status",)),
            SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(text: "Calls",))
          ]),),
          body: TabBarView(children: [
            HomePage(),
            LoginPage(),
            List_with_builder(),
            LoginPage()
          ]),
    ));
  }
}
