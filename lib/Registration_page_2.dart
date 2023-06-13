import 'package:flutter/material.dart';

class Registration_Stateful extends StatefulWidget {

  @override
  State<Registration_Stateful> createState() => _Registration_StatefulState();
}

class _Registration_StatefulState extends State<Registration_Stateful> {
  bool showpass=true;
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registratin PAge"),),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Text("Registration",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,),),
            TextFormField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: "Enter your username",
              labelText: "username",
              prefixIcon: Icon(Icons.contact_phone),
            ),),
            TextFormField(
              decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: "Enter your email",
              labelText: "email",
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
            ),),
            TextFormField(
              obscureText: showpass,
              obscuringCharacter: '#',
              decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: "Enter your password",
              labelText: "password",
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(onPressed: (){
                if(showpass){
                  showpass=false;
                }else{
                  showpass=true;
                }
              }, icon: Icon(showpass==true?Icons.visibility:Icons.visibility_off)),
            ),),
            TextFormField(
              obscureText: showpass,
              obscuringCharacter: '*',
              decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: "Enter your confirmpassword",
              labelText: "confirm password",
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(onPressed: (){
                if(showpass){
                  showpass=false;
                }else{
                  showpass=true;
                }
              }, icon: Icon(showpass==true?Icons.visibility:Icons.visibility_off) ),
            ),),
        ],
        ),
      ),
    );
  }
}
