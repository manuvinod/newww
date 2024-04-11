import 'package:flutter/material.dart';

class asgnmt2 extends StatefulWidget {
  const asgnmt2({super.key});

  @override
  State<asgnmt2> createState() => _asgnmt2State();
}

class _asgnmt2State extends State<asgnmt2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: Text("Sign in",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal()
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          ElevatedButton(onPressed: (){
          },style:ElevatedButton.styleFrom(primary: Colors.green.shade900,minimumSize: Size(500, 50),shape: RoundedRectangleBorder()),
              child:Text('sign in',style: TextStyle(color: Colors.white),) )
        ],
      ),

    );
  }
}

