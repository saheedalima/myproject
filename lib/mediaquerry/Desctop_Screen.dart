import 'package:flutter/material.dart';

class Desctop_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Big Screen"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8),
                  child: AspectRatio(
                      aspectRatio: 16/9,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(child: ListView.builder(itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green,
                      height: 100,
                    ),
                  );
                },itemCount: 8,)),

              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.orangeAccent,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
