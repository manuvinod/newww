import 'package:flutter/material.dart';

import '2.dart';

class Page3 extends StatelessWidget {
  Page3({super.key});
  final _formKey=GlobalKey<FormState>();
  TextEditingController _Eusername=TextEditingController();
  TextEditingController _Epassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.only(right: 350,top: 80),
              child: Text("Sign in ",style: TextStyle(color: Colors.black,fontSize: 30),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text("If you don't have an accound?",style: TextStyle(color: Colors.black,fontSize: 15),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page2(),));
                  }, child: Text("sign up"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                controller: _Eusername,
                decoration: InputDecoration(
                  labelText: "Enter UserName",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
                validator: (value) {
                  if (value==null || value.isEmpty){
                    return 'please enter your Username';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                controller: _Epassword,
                decoration: InputDecoration(
                  labelText: "Enter your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
                validator: (value) {
                  if (value==null || value.isEmpty){
                    return'Enter your password';
                  }else if (value.length<8){
                    return "password must be morethan 8 characte";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  String Username=_Eusername.text;
                  String password=_Epassword.text;
                }
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Welcome Back!!",style: TextStyle(color: Colors.indigo),),
                  );
                });
              },style: ElevatedButton.styleFrom(primary: Colors.indigo,minimumSize: Size(450, 50),shape: BeveledRectangleBorder()),
                  child: Text("Sing IN",style: TextStyle(color: Colors.white),))
            )
          ],),
        ),
      ),
    );
  }
}
