import 'package:flutter/material.dart';

class Signinwidget extends StatefulWidget {
  const Signinwidget({super.key});

  @override
  State<Signinwidget> createState() => _SigninwidgetState();
}

class _SigninwidgetState extends State<Signinwidget> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Log-IN",style: TextStyle(color:Colors.teal.shade900,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Text("show password"),
            CheckboxListTile(value: ischecked, onChanged: (value){
              setState(() {
                ischecked=value!;
              });
            },),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
              },
                style:ElevatedButton.styleFrom(primary:Colors.teal.shade800,minimumSize: Size(100, 50),shape:RoundedRectangleBorder()),
                child:Text("SIGN IN",style: TextStyle(color: Colors.white),),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(
                         "forgot Username?",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold), ),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text("forgot"),
                ),
                Text("usernsme/password?",style: TextStyle(color: Colors.teal.shade900,fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text("Don't have an account?"),
                ),
                Text("Sign up",style: TextStyle(color: Colors.teal.shade800,fontWeight: FontWeight.bold,fontSize: 15),)
              ],
            )
          ]
        ),
      ),
    );
  }
}
