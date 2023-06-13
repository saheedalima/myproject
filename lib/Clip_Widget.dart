import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Clip_Widget(),));
}
class Clip_Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clip WIdgets"),),
      body: ListView(
        children: [
          ClipRect(     //round aavan
            clipBehavior: Clip.hardEdge,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                  widthFactor: .2,
                  heightFactor: .4,
                  child: Image.asset("assets/Icons/maldives (2).jpg")),
               // https://unsplash.com/photos/kpfAnnRpM58
            ),
          ),
          ClipRect(     //ith koduthale cut aavu.enitt aligninte ullil adjust cheyth madhii
            child: Container(
              child: Align(
                alignment: Alignment.center,
                  widthFactor: .8,    //total width percentage vach cutavum
                  heightFactor: .4,   //total heightinte percentage vach cutavum
                  child: Image.asset("assets/Icons/img_1.png")),
            ),
          ),
          SizedBox(height: 20,),

          ClipOval(     //muttede shapil round aavan
          //  borderRadius: BorderRadius.circular(300),
            child: Image.asset("assets/Icons/img_5.png"),
          ),
          ClipPath(
          //  clipper: Round ,
          )
        ],
      ),
    );
  }
}
