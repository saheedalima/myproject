import 'package:flutter/material.dart';

class Mobile_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mbile SCreen"),
      ),
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(    //currently playing video
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),          //List of videos

            Expanded(child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.pinkAccent,
                  height: 120,
                ),
              );
            },itemCount: 8,))
          ],
        ),
      ),
    );
  }
}
