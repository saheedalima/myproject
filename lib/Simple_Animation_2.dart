import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: Simple_Animation_2()), // Wrap your app
    ),
  );
}
class Simple_Animation_2 extends StatefulWidget {

  @override
  State<Simple_Animation_2> createState() => _Simple_Animation_2State();
}

class _Simple_Animation_2State extends State<Simple_Animation_2> with SingleTickerProviderStateMixin {
  //multiple animationu tickerprvider
  //mixinayath kond with
  //Animationte state hange fetch cheyyan

  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();   //
    animationController =AnimationController(vsync: this,duration: Duration(seconds: 5));
    //hero-zoom aayi back to psitinilekk povum
    //tween -
    // .. - multiple functione vilikkam,separate eppazhum bject vilikkanda
    animation= Tween<double>(begin: 12,end: 100).animate(animationController!)..addListener(() { //value chage monitor cheyyan-adlistener
      setState(() {});  // changes varaan.changes fetch cheyyan.enth changes venamenn ithil paranju kodukkam
    });
  }

  void increasesize(){
    animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text("Hello All",style: TextStyle(fontSize: animation?.value),), //fontsize animationu anusariche kdukkavu.
                                                                                  //default kodutha animation work aavula

          ),
          ElevatedButton(onPressed: ()=>increasesize(), child: Text("increase size"))
        ],
      ),
    );
  }
}
