import 'package:flutter/material.dart';

class Asignmt2 extends StatefulWidget {
  const Asignmt2({super.key});

  @override
  State<Asignmt2> createState() => _Asignmt2State();
}

class _Asignmt2State extends State<Asignmt2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: Text("Login",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "MobileNumber",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
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
          ),
          ElevatedButton(onPressed: (){
          },style:ElevatedButton.styleFrom(primary: Colors.teal.shade900,minimumSize: Size(500, 50)),
              child: Text("Login",style: TextStyle(color: Colors.white),) ),
          Center(child: Text("Forgot password ?"),)
        ],
      ),
    );
  }
}
