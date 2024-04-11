import 'package:flutter/material.dart';

class social3 extends StatelessWidget {
  const social3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100,top: 40),
              child: Image.asset("assets/image/s logo 2.jpg",width: 260,),
            ),
          ],
        ),
        Container(width: 460,height: 500,
        decoration: BoxDecoration(
          color: Colors.teal.shade800,
          borderRadius: BorderRadius.circular(21)
        ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Forgot password?",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 4 ),),
              ),
              Text("please enter your resigisterd Email to reset your your password.we will send reset password link to your email ID",
                style: TextStyle(color: Colors.white,fontSize: 11), textAlign: TextAlign.center,maxLines: 3,),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextField(
                  decoration: InputDecoration(filled: true,
                    fillColor: Colors.white,
                    labelText: "email ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(onPressed: (){
                },style: ElevatedButton.styleFrom(primary: Colors.yellow.shade800,minimumSize: Size(180, 50)),
                    child: Text("SEND",style: TextStyle(color: Colors.white),),
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 120,top: 50),
                child: Row(
                  children: [
                    Text("Remember Password?",style: TextStyle(color: Colors.white)),
                    Text(" Sign in",style: TextStyle(color: Colors.yellow.shade800),),
                  ],
                ),
              ),
            ],),
          ),
        ),
        ],),
      ),
    );
  }
}
