import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bottom_Sheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Sheet"),),
      body: Center(
        //click events kodukkan gesture detector
        child: GestureDetector(
          onLongPress: ()=> Showsheet(context),
            child: const Icon(Icons.share,size: 50,color: Colors.blue,)),
      ),
    );
  }
  void Showsheet(BuildContext context){  //ee function craete cheythath ella idathum ee funcion vilichal ee prpertiesokke kittum
                                          //buildinte ulllilaanenki vere evideyum access cheyyan pattilla.evideyum use cheyyanayi classinte puarth create cheythu

    showModalBottomSheet(context: context,
        elevation: 3,  //pongi adjustaayi nikkan
        builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,   //contentinu anuarichu varaan
          children: const [
            ListTile(leading: FaIcon(FontAwesomeIcons.squareWhatsapp), //dependency add cheythath kond FaIcon vilichu
              title: Text("WhatsApp"),
            ),
            ListTile(leading: FaIcon(FontAwesomeIcons.squareFacebook),
              title: Text("facebook"),
            ),
            ListTile(leading: FaIcon(FontAwesomeIcons.squareInstagram),
              title: Text("instagram"),
            ),
            ListTile(leading: FaIcon(FontAwesomeIcons.squareYoutube),
              title: Text("youtube"),
            )

          ],
        ),
      );
    });
  }
}
