import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Color? mycolor;      //change varaathirikkan final aayi create cheyyanam
  final Image? myimage;
  VoidCallback? onpress;
  Widget? label;    //ith kodutha enth widget venenkilum thaazhe kodukka eg, text,image.//ith functions aanu

  MyWidget({this.mycolor,required this.myimage,this.onpress,this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mycolor,
      child: ListTile(
        title: label,
        leading: myimage,
        onTap: onpress,
      ),
    );
  }
}
