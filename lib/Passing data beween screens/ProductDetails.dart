import 'package:flutter/material.dart';
import 'package:myproject/Passing%20data%20beween%20screens/Dummy_data.dart';

class ProductDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final productId= ModalRoute.of(context)?.settings.arguments;
    final  productsfromlist= products.firstWhere((element) => element["id"]==productId);

    return Scaffold(
      appBar: AppBar(title: Text("My Shoe"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(productsfromlist["image"]),
            Text(productsfromlist["name"]),
            Text(productsfromlist["Description"]),
            Text("${productsfromlist["price"]}"),
          ],
        ),
      ),
    );

  }
}
