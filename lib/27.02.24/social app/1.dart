import 'package:flutter/material.dart';

class socialapp extends StatelessWidget {
  const socialapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120,top: 60),
              child: Row(
                children: [
                  Image.asset("assets/image/s logo 2.jpg",width: 260),],
              ),
            ),
            Container(
              width: 460,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.teal.shade900,
                borderRadius: BorderRadius.circular(21)
              ),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(children: [
                  Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                  Text("Login to your account",style: TextStyle(fontSize: 15,color: Colors.white),),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: TextField(style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(filled: true,fillColor:Colors.white ,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(onPressed: (){
                    },style: ElevatedButton.styleFrom(primary: Colors.yellow.shade800,minimumSize: Size(200, 50)),
                        child:Text("LOG IN",style: TextStyle(color: Colors.white),) ),
                  ),
                  Text("Don't have an Account?",style: TextStyle(color: Colors.white),),
                  Text("Sign Up",style: TextStyle(color: Colors.yellow),),
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
