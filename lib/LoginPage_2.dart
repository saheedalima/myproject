import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject/HomePage.dart';

class LoginPage_2 extends StatefulWidget {
  const LoginPage_2({Key? key}) : super(key: key);

  @override
  State<LoginPage_2> createState() => _LoginPage_2State();
}

class _LoginPage_2State extends State<LoginPage_2> {
  var formkey = GlobalKey<FormState>();  //to fetch the state of the form
  bool showpwd=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginPage Stateful"),),
      body: Builder(
        builder: (context) {
          return Form(       //oru fieldinte current state ariyaan
              key:formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: Text("Login Page",style: TextStyle(fontSize: 40),)),
                  TextFormField(decoration:
                  const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: "email",
                    hintText: "enter your email",
                    helperText: "email must be in words",
                  ),
                  validator: (uname){
                    if(uname!.isEmpty || !uname.contains('@')){
                      return "Enter a valid email";
                    }else{
                      return null;
                    }
                  },),
                  TextFormField(
                    obscureText: showpwd,
                    obscuringCharacter: '#',
                    decoration:  InputDecoration(border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                      helperText: "passsword must be in letters",
                      hintText: "enter your password",
                      labelText: "password",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpwd){
                            showpwd== false;
                          }
                        });
                      }, icon: Icon(showpwd == true? Icons.visibility_off : Icons.visibility)),
                    ),
                    validator: (pass){
                      if(pass!.isEmpty && pass.length < 6){
                        return "password must be 6 digit";
                      }else{
                        return null;
                      }
                    },
                  ),
                  ElevatedButton(onPressed: (){
                    final valid= formkey.currentState!.validate();
                    if(valid) {  //separate condition if il kdukkanda.valid true or false aaayirikkum.veruthe kodutha true aayirikkum
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HomePage() ));
                    }else{
                      Fluttertoast.showToast(msg: "Login Failed",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0,
                      gravity: ToastGravity.BOTTOM);
                    }
                  }, child: Text("Login Here")),
                  TextButton(onPressed: (){}, child: Text("Sign Up Here")),
                ],
              )
          );
        }
      ),
    );
  }
}
