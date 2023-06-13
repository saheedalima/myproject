import 'dart:js';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: Tourism_Main_Page(),
  )
  ));
}


class Tourism_Main_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget tile({required String s,required IconData data})
    {
      return ListTile(
        title: Text(s,style: const TextStyle(
          wordSpacing: 2.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        trailing: Icon(data,color: Colors.white,),
      );
    }
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,bottom: 70),
              child: CircleAvatar(
                radius: 135,
                backgroundImage: AssetImage("assets/Icons/maldives3.jpg"),
              ),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  fixedSize: Size(250, 50)
                ),
                  onPressed: (){}, child: Text("Login")),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: Center(child: Text("-or-",style: TextStyle(fontSize: 25),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7,bottom: 10,left: 30,right: 30),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child: tile(s: "Login With Facebook", data: Icons.facebook))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child: tile(s: "Login with Twitter", data: Icons.transfer_within_a_station))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child: tile(s: "Login With Google", data: Icons.transfer_within_a_station)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
