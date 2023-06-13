import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Tourism_App_Ui/Datas.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            home: Go_Fast(),
          )));
}

class Go_Fast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Go Fast",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )),
        actions:  const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          )
        ],
        leading: const Icon(Icons.menu,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Popular Places",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("View all",style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                childAspectRatio: .7,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 9,
                crossAxisSpacing: 1,
                children: datas
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            //height: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(e["image_1"]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(children: [
                              Positioned(
                                  top: 230,
                                  left: 7,
                                  child: Text(
                                    e["text_1"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: ElevatedButton(
                                      onPressed: () {}, child: Text(e["ids"])))
                            ]),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                color: Colors.blue,
                child: const Center(
                    child: Text(
                  "Explore Now",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
