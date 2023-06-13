import 'package:flutter/material.dart';
import 'package:myproject/Passing%20data%20beween%20screens/Dummy_data.dart';
import 'package:myproject/Passing%20data%20beween%20screens/ProductDetails.dart';
void main(){
  runApp(MaterialApp(
    home: Product_screen(),
    routes: {
      "second" : (context)=>ProductDetails(),
    },
  ));
}
class Product_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop My Shoe"),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: products.map((e) => ListTile(     //prducts vilikkumbo matte pagil create cheytha list ivide varum
                                                    //functionte ullil enth venelum kodukkam. .tolist-listaayi cnvert aaakkan
          leading: Image.asset("${e["image"]}"),
          title: Text("${e["name"]}"),              //String value ne integer aayi edukkan
          trailing: Text("BUY NOW",),
          onTap: (){
            gotoNext(context,e["id"]);
          },
        )).toList(),

        ///2nd way
        // children: List.generate(products.length, (index) => ListTile(
        //   leading: Image.asset("${products[index]["image"]}"),
        //   title: Text("${products[index]["name"]}"),
        // )),
      ),
    );
  }

}

void gotoNext(BuildContext context, e) {
  Navigator.of(context).pushNamed("second",arguments: e);   //pushNamed ilaanu arguments pass cheyyan pattullu allenki datas pas cheyyan attullu
}
