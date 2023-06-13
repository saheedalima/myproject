import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      DevicePreview(builder: (context)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Flexible_Demo(),
      )
      ));
}
class Flexible_Demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible"),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(14),         //Flexible kodutha oronninum ethra space venonn paraju koduka
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 1,              //flex kodtha equally fitaavu,ethra size aarkoke venonn paranju kodukkkam
                      fit: FlexFit.tight,  //loosaneneki screen valuthavumbo expand aavum
                                          //tightaanenki szinu anusarichu fitaavum
                      child: Container(color: Colors.blue,height: 175,width: 175,)),
                  Flexible(
                    flex: 2,
                      fit: FlexFit.tight,
                      child: Container(color: Colors.red,height: 120,width: 120,)),
                ],
              ),
              SizedBox(width: 20,),

              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                  color: Colors.yellow,height: 380,width: 200,),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(color: Colors.orange,height: 300,width: 180,)),
                  Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(color: Colors.green,height:300,width: 180,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
