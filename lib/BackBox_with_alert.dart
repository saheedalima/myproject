import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExitAppAlert(),));
}
class ExitAppAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future<bool> showalert()async {//async futurilopertion varaan.delay varuanenki ath kazhinj alert box varum
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: const Text("Exit?!!!!!!"),
          content: const Text("Do you really want to Exit"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(true);   //veruthe pop vilichaal backile pagilekk varum.
                                                 //pop(true) koduthaal appinn thanne exit aavum.
            }, child: const Text("yes")),
            ElevatedButton(onPressed: (){}, child: const Text("No")),
            ElevatedButton(onPressed: (){}, child: const Text("Cancel")),
          ],
        );
      });
    }

    return WillPopScope(     //phonil back adikkumbo alertdialoge varaan
        child: Scaffold(
          appBar: AppBar(title: const Text(""),),
          body: const Center(
            child: Text("Press back to exit"),
          ),
        ),
        onWillPop: showalert);
  }
}
