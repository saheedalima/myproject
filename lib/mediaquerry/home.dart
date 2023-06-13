import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/mediaquerry/Desctop_Screen.dart';
import 'Mobile_Screen.dart';
void main(){
      runApp(
        MaterialApp(home: HomePage(),)
      );
}
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if(devicewidth < 600){
      return Mobile_Screen();
    }else{
      return Desctop_Screen();
    }
  }
}

