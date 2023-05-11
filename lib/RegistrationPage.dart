
import 'package:flutter/material.dart';
import 'package:myproject/LoginPage.dart';

class RegistrationPage extends StatelessWidget {
  String username="saheed";
  String password="1234";
  String confirmpass="1234";

  TextEditingController textEditingController_1=TextEditingController();
  TextEditingController textEditingController_2=TextEditingController();
  TextEditingController textEditingController_3=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(50)),
          TextField(
            controller: textEditingController_1,
            decoration: InputDecoration(
              hintText: "Enter Username",
              helperText: "Username must be in words",
              labelText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )
            ),
          ),
          TextField(
            controller: textEditingController_2,
            decoration: const InputDecoration(
              hintText: "Enter Password",
              helperText: "Password must be in words",
              labelText: "Passwrod",
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)))
            ),
          ),
          TextField(
            controller: textEditingController_3,
            decoration: InputDecoration(
              hintText: "Confirm Password",
              helperText: "Confirm Password must be in words",
              labelText: "Confirm password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            String email=textEditingController_1.text;
            String pwd=textEditingController_2.text;
            String cpass=textEditingController_3.text;
            if(email != ""&& pwd != ""&& cpass != ""){
              if(username == email&& password == pwd && confirmpass == cpass){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage() ));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registration Failed ")));
              }
            }else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Field does not empty!!!..")));
            }
          }, child: Text("Register Here")),
          TextButton(onPressed: (){}, child: Text("If your already Registered Please login")),
        ],

      ),
    );
  }
}
