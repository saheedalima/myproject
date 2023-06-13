import 'package:flutter/material.dart';

class Expand_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hello',style: TextStyle(fontSize: 200),),
            Icon(Icons.camera,size: 200,),
            Expanded(child: Image(image: AssetImage("assets/Icons/Nitheesh.png"),fit: BoxFit.cover,)),
            //expanded koduthaal over flow varaathe image screeninu anusarich adjust aavum.scrollable aakkanda aavashyolla
          ],
        ),
      ),

    );
  }
}
