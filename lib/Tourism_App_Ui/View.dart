import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Tourism_App_Ui/Datas.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            home: View_Ui(),
          )));
}

class View_Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 60),
            child: ListTile(
              title: const Text(
                //datas["text_2"],
                "Most furious place and Peaceful natural place",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("4.7"),
                    )
                  ],
                ),
              ),
              trailing: Container(
                height: 200,
                width: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 40),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "About Places",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 8, right: 8, bottom: 8),
                    child: Text(
                      "What Are Descriptive Words? A descriptive word describes or gives us more information about things. A descriptive word can be a color, size, shape, texture, or number, to name a few! Descriptive words help you understand more when you're reading. We can start with using descriptive words of things we can see.",
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Text(
                      "Special Facilities",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 8, right: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.local_parking,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                            Text(
                              "Parking",
                              style: TextStyle(color: Colors.lightBlueAccent),
                            )
                          ],
                        ),
                        Wrap(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.timer,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                            Text(
                              "24*7 support",
                              style: TextStyle(color: Colors.lightBlueAccent),
                            )
                          ],
                        ),
                        Wrap(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.wifi,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                            Text(
                              "Free Wifi",
                              style: TextStyle(color: Colors.lightBlueAccent),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 170,
                      width: double.infinity,
                      // child: Image.asset("assets/Icons/img.png",fit: BoxFit.cover,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/Icons/img.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Special Facilities",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, bottom: 8, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey),
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Text("Adult"),
                                Text("02"),
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey),
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Text("Adult"),
                                Text("02"),
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey),
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Text("Adult"),
                                Text("02"),
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey),
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Text("Adult"),
                                Text("02"),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, bottom: 8, top: 25),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.blue,
                      child: const Center(
                          child: Text(
                        "Explore Now",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
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
