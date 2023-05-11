
import 'package:flutter/material.dart';

import 'HomePage.dart';

class LoginPage extends StatelessWidget {

  ///predefined username and password
  String username ="saheed";
  String password="saheed@123";

  ///contrller for fetching data from textfield
  TextEditingController uname=TextEditingController();
  TextEditingController pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage"),
      ),
      body: SingleChildScrollView(  //avoid overflow of your screen
        child: Column(  //adding multiple views and thazhe thazhe varaanum
          children: [
            Image.asset("assets/Icons/Nitheesh.png",width: 200,height: 200,),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.panorama_fish_eye),
                  fillColor: Colors.red,
                  hintText: "Enter Username",
                  labelText: "Username",
                  helperText: "User name must be an email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  )
                ),
              ),
            ),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.panorama_fish_eye),
                  fillColor: Colors.red,
                  hintText: "Enter password",
                  labelText: "password",
                  helperText: "password must be an password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  )
              ),
            ),
            ElevatedButton(onPressed: (){
              String email = uname.text.trim();
              String pwd = pass.text;

              if(email!=""&&pwd!=""){
                if(username==email&&password==pwd){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username and password mismatch")));
                }
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username and password cannot be empty")));
              }
            }, child: Text("Login"),),
            TextButton(onPressed: (){}, child: Text("Not a User..? Register Here..")),
            TextButton(onPressed: (){}, child: Text("skip")),
          ],
        ),
      ),
    );
  }
}
