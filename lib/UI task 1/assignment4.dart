import 'package:flutter/material.dart';

class asgmnt4 extends StatefulWidget {
  const asgmnt4({super.key});

  @override
  State<asgmnt4> createState() => _asgmnt4State();
}

class _asgmnt4State extends State<asgmnt4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login Screen App",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Center(child:Text(
            "codeplayon",style: TextStyle(color: Colors.blue,fontSize: 32,fontWeight: FontWeight.bold),) ),
          Padding(
            padding:  EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "User Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal()
                )
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal()
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(
                "Forgot password",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),),
          ),
          ElevatedButton(onPressed: (){
          },style:ElevatedButton.styleFrom(primary: Colors.blue,minimumSize: Size(500, 50),shape: RoundedRectangleBorder())
              , child:Text("Login",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Center(child: Row(
              children: [
                Text(
                  "Dose not have account? "),
                Text("Sign Up",style: TextStyle(color: Colors.blue),)
              ],
            ),),
          )
        ],
      ),
    );
  }
}
