import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '2.dart';
import 'frgt pswrd.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController _usernameController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: _formKey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,top: 70),
          child: Text("ABCD",style: TextStyle(color: Colors.amber.shade800,fontWeight: FontWeight.bold,fontSize: 40,letterSpacing: 50),),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(filled:true,
            fillColor: Colors.amber.shade800,
              hintText: 'UserName',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal()
              )
            ),
            validator: (value) {
              if (value==null || value.isEmpty){
                return'Enter your username';
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.amber.shade800,
              hintText: " Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal()
              )
            ),
            validator: (value) {
              if (value== null || value.isEmpty){
                return "enter your password";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 300,bottom: 20),
          child: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Frgt(),));
          },child: Text("Forgot password ?",style: TextStyle(color: Colors.deepOrange),)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
            if (_formKey.currentState!.validate()){
              String username=_usernameController.text;
              String password=_passwordController.text;
            }
            Navigator.push(context, MaterialPageRoute(builder: (context) => Last(),));
          },style: ElevatedButton.styleFrom(primary: Colors.amber.shade800,minimumSize: Size(300, 50),shape: BeveledRectangleBorder()),
              child: Text("Login",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)),
        ),
        Row(
          children: [
            Text("Dont have an accound ?"),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
            }, child: Text("Sign Up",style: TextStyle(color: Colors.deepOrange),))
          ],
        )
      ],),
      ),
    );
  }
}
