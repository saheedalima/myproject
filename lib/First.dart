import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myproject/BackBox_with_alert.dart';
import 'package:myproject/Bottom_Navigationbar.dart';
import 'package:myproject/Bttom_Sheet.dart';
import 'package:myproject/Expanded_Ex.dart';
import 'package:myproject/Expanded_New.dart';
import 'package:myproject/Expansion_Ex.dart';
import 'package:myproject/Fitted_Box_Ex.dart';
import 'package:myproject/Flexible_Demo.dart';
import 'package:myproject/GridView_Custom.dart';
import 'package:myproject/GridView_Extend.dart';
import 'package:myproject/GridView_ex.dart';
import 'package:myproject/Grid_With_Builder.dart';
import 'package:myproject/HomePage.dart';
import 'package:myproject/ListView_builder.dart';
import 'package:myproject/List_custom.dart';
import 'package:myproject/LoginPage.dart';
import 'package:myproject/Lottie_Animation.dart';
import 'package:myproject/Navigation_Drawer.dart';
import 'package:myproject/Read_More.dart';
import 'package:myproject/SLiver_Ex.dart';
import 'package:myproject/Slider_Carousel.dart';
import 'package:myproject/Stag_Grid.dart';
import 'package:myproject/Stag_Grid_2.dart';
import 'package:myproject/Status_Ui.dart';
import 'package:myproject/TravellingUi.dart';
import 'package:myproject/WhatsApp_Tab.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: FirstPage()), // Wrap your app
    ),
  );
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() =>
      _FirstPageState(); //to convert myapp which is currently immutable tp a mutable state
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Flexible_Demo()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///ui will create only after creation of this function
    /// Build context - locate and access each widgets in the widget tree
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,

          ///setting background
          // color: Colors.black,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.purpleAccent,
            Colors.orangeAccent,
            Colors.indigo,
            Colors.yellow,
            Colors.green,
            Colors.red
          ], begin: Alignment.bottomLeft, end: Alignment.topRight)
              // color: Colors.blueAccent
              //   image: DecorationImage(
              //     fit: BoxFit.cover,
              //       image: AssetImage("assets/Icons/background.png"))
              ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    "data:image/jpeg;base64,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"),
                // Image.asset("assets/Icons/Nitheesh.png",
                //   height: 200,
                //   width: 200,
                // ),
                // Icon(
                //   Icons.ac_unit_outlined,
                //   size: 30,
                //   color: Colors.green,
                // ),
                Text(
                  "ROBOTS",
                  style: GoogleFonts.abel(
                      color: Colors.deepOrange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  //   style: TextStyle(
                  //       color: Colors.red,
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold,
                  //       fontStyle: FontStyle.italic,
                  //       backgroundColor: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
