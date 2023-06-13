import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myproject/LoginPage_2.dart';

void main(){
  runApp(MaterialApp(home: Introductin_Screen(),));
}
class Introductin_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(  //oro pagilum varunna decorationaanu.common aayi itupole kodutha
                                                          //ellathilum ore pole varum.separate venenki ella pagilum ith vilikkanam
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.greenAccent,
        ),
        bodyTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.greenAccent,
        ),
       // imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
          gradient: LinearGradient(  //colors varaan allenki backgrund image kduthalum madhii
            colors: [
              Colors.green,
              Colors.yellow,
              Colors.orangeAccent,
            ],
            stops: [0.1, 0.5, 0.7],
            //oro colorum ethra size edukkanam enn ariyaan
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
          ),
        ));
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "First PAge",
          body: "INtroduction Screen on boarding",
          //vere function vilichath...
          image: introimage("assets/Icons/Background2.jpg"),
        ),
        PageViewModel(
          title: "First PAge",
          body: "INtroduction Screen on boarding",
          image: introimage("assets/Icons/Background2.jpg"),
        ),
        PageViewModel(
          title: "First Page",
          body: "Introduction Screen on boarding",
          image: introimage("assets/Icons/Background2.jpg"),
        ),
        PageViewModel(
          title: "First PAge",
          body: "INtroduction Screen on boarding",
          image: introimage("assets/Icons/Background2.jpg"),
        ),
      ],
      next: Text("Next"),
      onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage_2())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage_2())),
      showSkipButton: true,
     // back: Text("BAck"),
      //backbuttonum skipbutton orumich kodkkan paadilla
      skip: Text("SKIP"),
      done: Text("Done"),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        activeSize: Size(20, 20),
        activeColor: Colors.grey
      ),
    );
  }

  Widget introimage(String image) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 700,
        width: 700,
        child: Image.asset(
          image,
           width: double.infinity,
           height: double.infinity,
        ),
      ),
    );
  }
}
