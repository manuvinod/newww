import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '1.dart';
import '2.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey=GlobalKey<FormState>();
  TextEditingController _phonenumController=TextEditingController();
  TextEditingController _EmailController=TextEditingController();
  TextEditingController _usernameController=TextEditingController();
  TextEditingController _psswordController=TextEditingController();
  TextEditingController _confrmPswrdController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300,top: 30),
              child: Text("SIGN UP",style: TextStyle(color: Colors.amber.shade800,fontWeight: FontWeight.bold,fontSize: 35),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 10),
              child: Row(
                children: [
                  Text("already have an accound ?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  }, child: Text("login",style: TextStyle(color: Colors.deepOrange),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                controller: _phonenumController,
                decoration: InputDecoration(filled: true,
                  fillColor: Colors.amber.shade800,
                  hintText: "phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
                validator: (value) {
                  if (value==null || value.isEmpty){
                    return "enter your phone number";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                controller: _EmailController,
                decoration: InputDecoration(filled: true,
                  fillColor: Colors.amber.shade800,
                  hintText: "Email ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
                validator: (value) {
                  if (value== null || value.isEmpty){
                    return 'Enter your email id';
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber.shade800,
                  hintText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
                validator: (value) {
                  if(value== null || value.isEmpty){
                    return'enter your password';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                controller: _confrmPswrdController,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.amber.shade800,
                  hintText: "Conforme password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                  ),
                ),
                validator: (value) {
                  if (value==null || value.isEmpty){
                    return 'Re-enter the password';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Welcome!!"),
                  content: Text("Are you sure to continue?"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Last(),));
                    }, child: Text("Yes")),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("No"))
                  ],
                );
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) => Last(),));
            },style: ElevatedButton.styleFrom(primary: Colors.amber.shade800,minimumSize: Size(400, 50),shape: BeveledRectangleBorder()),
                child: Text("Sign UP"))
          ],
        ),
      ),
    );
  }
}
