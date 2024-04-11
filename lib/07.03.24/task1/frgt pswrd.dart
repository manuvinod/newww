import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '1.dart';

class Frgt extends StatefulWidget {
  const Frgt({super.key});

  @override
  State<Frgt> createState() => _FrgtState();
}

class _FrgtState extends State<Frgt> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController _emailContriller=TextEditingController();
  TextEditingController _phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100,right: 240),
                child: Text("forgot password ?",style: TextStyle(color: Colors.amber.shade800,fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber.shade800,
                      hintText: "enter your phoneNumber",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal()
                      )
                  ),
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return "enter your phoneNumber linked with this accound";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: _emailContriller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber.shade800,
                      hintText: "enter your Email ID",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal()
                      )
                  ),
                  validator: (value) {
                    if (value==null || value.isEmpty){
                      return "Enter your emilid";
                    }else if(value.length<8){
                      return "emaild id must be atleast 8 character";
                    }
                    return null;
                  },
                ),
              ),
              Text("we will send your new password to your Email ID that linked with this number!!",style: TextStyle(color: Colors.deepOrange),),
              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()){
                  String phonenumber=_phoneController.text;
                  String emaild=_emailContriller.text;
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },style: ElevatedButton.styleFrom(primary: Colors.amber.shade800,minimumSize: Size(300, 50),shape: BeveledRectangleBorder()),
                  child: Text("send password",style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),

    );
  }
}
