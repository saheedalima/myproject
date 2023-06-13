import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      DevicePreview(builder: (context)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: FittedBox(),
      )
      ));
}
class Fitted_Box_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(//over flow ozhivakkan.eathu screeninu anusarichum settavum
            fit: BoxFit.cover,
            alignment: Alignment.center,
            child: Card(
              color: Colors.yellow,
              child: Row(
                children: [
                  Container(
                    child: Text("Fitted Box Example",style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                   // height: MediaQuery.of(context).size.height/2,
                    child: Image.asset("assets/Icons/background.png"),
                  )
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
