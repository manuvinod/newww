import 'package:flutter/material.dart';

class UiTask2 extends StatefulWidget {
  const UiTask2({super.key});

  @override
  State<UiTask2> createState() => _UiTask2State();
}

class _UiTask2State extends State<UiTask2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "First Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
